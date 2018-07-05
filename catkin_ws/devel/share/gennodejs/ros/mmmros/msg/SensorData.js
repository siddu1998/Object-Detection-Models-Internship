// Auto-generated. Do not edit!

// (in-package mmmros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftRange = null;
      this.rightRange = null;
    }
    else {
      if (initObj.hasOwnProperty('leftRange')) {
        this.leftRange = initObj.leftRange
      }
      else {
        this.leftRange = 0;
      }
      if (initObj.hasOwnProperty('rightRange')) {
        this.rightRange = initObj.rightRange
      }
      else {
        this.rightRange = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorData
    // Serialize message field [leftRange]
    bufferOffset = _serializer.int64(obj.leftRange, buffer, bufferOffset);
    // Serialize message field [rightRange]
    bufferOffset = _serializer.int64(obj.rightRange, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorData
    let len;
    let data = new SensorData(null);
    // Deserialize message field [leftRange]
    data.leftRange = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rightRange]
    data.rightRange = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mmmros/SensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1c36752ab3b6f5eff0925b1e6157daa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 leftRange
    int64 rightRange
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorData(null);
    if (msg.leftRange !== undefined) {
      resolved.leftRange = msg.leftRange;
    }
    else {
      resolved.leftRange = 0
    }

    if (msg.rightRange !== undefined) {
      resolved.rightRange = msg.rightRange;
    }
    else {
      resolved.rightRange = 0
    }

    return resolved;
    }
};

module.exports = SensorData;
