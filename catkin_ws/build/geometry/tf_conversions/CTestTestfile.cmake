# CMake generated Testfile for 
# Source directory: /home/sid/catkin_ws/src/geometry/tf_conversions
# Build directory: /home/sid/catkin_ws/build/geometry/tf_conversions
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_tf_conversions_gtest_test_eigen_tf "/home/sid/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/sid/catkin_ws/build/test_results/tf_conversions/gtest-test_eigen_tf.xml" "--return-code" "/home/sid/catkin_ws/devel/lib/tf_conversions/test_eigen_tf --gtest_output=xml:/home/sid/catkin_ws/build/test_results/tf_conversions/gtest-test_eigen_tf.xml")
add_test(_ctest_tf_conversions_gtest_test_kdl_tf "/home/sid/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/sid/catkin_ws/build/test_results/tf_conversions/gtest-test_kdl_tf.xml" "--return-code" "/home/sid/catkin_ws/devel/lib/tf_conversions/test_kdl_tf --gtest_output=xml:/home/sid/catkin_ws/build/test_results/tf_conversions/gtest-test_kdl_tf.xml")
add_test(_ctest_tf_conversions_nosetests_test.posemath.py "/home/sid/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/sid/catkin_ws/build/test_results/tf_conversions/nosetests-test.posemath.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/sid/catkin_ws/build/test_results/tf_conversions" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/sid/catkin_ws/src/geometry/tf_conversions/test/posemath.py --with-xunit --xunit-file=/home/sid/catkin_ws/build/test_results/tf_conversions/nosetests-test.posemath.py.xml")
