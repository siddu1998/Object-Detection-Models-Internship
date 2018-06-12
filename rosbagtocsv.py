
import rosbag, sys, csv
import time
import string
import os 
import shutil

if (len(sys.argv) > 2):
	print ("invalid number of arguments:   " + str(len(sys.argv)))
	print ("should be 2: 'bag2csv.py' and 'bagName'")
	print ("or just 1  : 'bag2csv.py'")
	sys.exit(1)
elif (len(sys.argv) == 2):
	listOfBagFiles = [sys.argv[1]]
	numberOfFiles = "1"
	print ("taken into consideratiion 1 bagfile: " + str(listOfBagFiles[0]))
elif (len(sys.argv) == 1):
	listOfBagFiles = [f for f in os.listdir(".") if f[-4:] == ".bag"]	
	numberOfFiles = str(len(listOfBagFiles))
	print("reading all " + numberOfFiles + " bagfiles in current directory: \n")
	for f in listOfBagFiles:
		print f
	print ("\n press ctrl+c in the next 10 seconds to cancel \n")
	time.sleep(10)
else:
	print ("bad argument(s): " + str(sys.argv))
	sys.exit(1)

count = 0
for bagFile in listOfBagFiles:
	count += 1
	print ("reading file " + str(count) + " of  " + numberOfFiles + ": " + bagFile)
	#access bag
	bag = rosbag.Bag(bagFile)
	bagContents = bag.read_messages()
	bagName = bag.filename


	folder = string.rstrip(bagName, ".bag")
	try:	
		os.makedirs(folder)
	except:
		pass
	shutil.copyfile(bagName, folder + '/' + bagName)


	listOfTopics = []
	for topic, msg, t in bagContents:
		if topic not in listOfTopics:
			listOfTopics.append(topic)


	for topicName in listOfTopics:

		filename = folder + '/' + string.replace(topicName, '/', '_slash_') + '.csv'
		with open(filename, 'w+') as csvfile:
			filewriter = csv.writer(csvfile, delimiter = ',')
			firstIteration = True	#allows header row
			for subtopic, msg, t in bag.read_messages(topicName):	
				msgString = str(msg)
				msgList = string.split(msgString, '\n')
				instantaneousListOfData = []
				for nameValuePair in msgList:
					splitPair = string.split(nameValuePair, ':')
					for i in range(len(splitPair)):	#should be 0 to 1
						splitPair[i] = string.strip(splitPair[i])
					instantaneousListOfData.append(splitPair)
				
				if firstIteration:	
					headers = ["rosbagTimestamp"]	
					for pair in instantaneousListOfData:
						headers.append(pair[0])
					filewriter.writerow(headers)
					firstIteration = False
				
				values = [str(t)]	
				for pair in instantaneousListOfData:
					if len(pair) > 1:
						values.append(pair[1])
				filewriter.writerow(values)
	bag.close()
print ("Done reading all " + numberOfFiles + " bag files.")
