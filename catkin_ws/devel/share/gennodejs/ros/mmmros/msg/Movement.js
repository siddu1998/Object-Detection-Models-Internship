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

class Movement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftWheelSpeed = null;
      this.rightWheelSpeed = null;
      this.leftShoulderAngle = null;
      this.rightShoulderAngle = null;
      this.leftElbowAngle = null;
      this.rightElbowAngle = null;
      this.leftArmExtension = null;
      this.rightArmExtension = null;
      this.leftGripperAngles = null;
      this.rightGripperAngles = null;
    }
    else {
      if (initObj.hasOwnProperty('leftWheelSpeed')) {
        this.leftWheelSpeed = initObj.leftWheelSpeed
      }
      else {
        this.leftWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('rightWheelSpeed')) {
        this.rightWheelSpeed = initObj.rightWheelSpeed
      }
      else {
        this.rightWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('leftShoulderAngle')) {
        this.leftShoulderAngle = initObj.leftShoulderAngle
      }
      else {
        this.leftShoulderAngle = 0.0;
      }
      if (initObj.hasOwnProperty('rightShoulderAngle')) {
        this.rightShoulderAngle = initObj.rightShoulderAngle
      }
      else {
        this.rightShoulderAngle = 0.0;
      }
      if (initObj.hasOwnProperty('leftElbowAngle')) {
        this.leftElbowAngle = initObj.leftElbowAngle
      }
      else {
        this.leftElbowAngle = 0.0;
      }
      if (initObj.hasOwnProperty('rightElbowAngle')) {
        this.rightElbowAngle = initObj.rightElbowAngle
      }
      else {
        this.rightElbowAngle = 0.0;
      }
      if (initObj.hasOwnProperty('leftArmExtension')) {
        this.leftArmExtension = initObj.leftArmExtension
      }
      else {
        this.leftArmExtension = 0.0;
      }
      if (initObj.hasOwnProperty('rightArmExtension')) {
        this.rightArmExtension = initObj.rightArmExtension
      }
      else {
        this.rightArmExtension = 0.0;
      }
      if (initObj.hasOwnProperty('leftGripperAngles')) {
        this.leftGripperAngles = initObj.leftGripperAngles
      }
      else {
        this.leftGripperAngles = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('rightGripperAngles')) {
        this.rightGripperAngles = initObj.rightGripperAngles
      }
      else {
        this.rightGripperAngles = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Movement
    // Serialize message field [leftWheelSpeed]
    bufferOffset = _serializer.float64(obj.leftWheelSpeed, buffer, bufferOffset);
    // Serialize message field [rightWheelSpeed]
    bufferOffset = _serializer.float64(obj.rightWheelSpeed, buffer, bufferOffset);
    // Serialize message field [leftShoulderAngle]
    bufferOffset = _serializer.float64(obj.leftShoulderAngle, buffer, bufferOffset);
    // Serialize message field [rightShoulderAngle]
    bufferOffset = _serializer.float64(obj.rightShoulderAngle, buffer, bufferOffset);
    // Serialize message field [leftElbowAngle]
    bufferOffset = _serializer.float64(obj.leftElbowAngle, buffer, bufferOffset);
    // Serialize message field [rightElbowAngle]
    bufferOffset = _serializer.float64(obj.rightElbowAngle, buffer, bufferOffset);
    // Serialize message field [leftArmExtension]
    bufferOffset = _serializer.float64(obj.leftArmExtension, buffer, bufferOffset);
    // Serialize message field [rightArmExtension]
    bufferOffset = _serializer.float64(obj.rightArmExtension, buffer, bufferOffset);
    // Check that the constant length array field [leftGripperAngles] has the right length
    if (obj.leftGripperAngles.length !== 5) {
      throw new Error('Unable to serialize array field leftGripperAngles - length must be 5')
    }
    // Serialize message field [leftGripperAngles]
    bufferOffset = _arraySerializer.float64(obj.leftGripperAngles, buffer, bufferOffset, 5);
    // Check that the constant length array field [rightGripperAngles] has the right length
    if (obj.rightGripperAngles.length !== 5) {
      throw new Error('Unable to serialize array field rightGripperAngles - length must be 5')
    }
    // Serialize message field [rightGripperAngles]
    bufferOffset = _arraySerializer.float64(obj.rightGripperAngles, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Movement
    let len;
    let data = new Movement(null);
    // Deserialize message field [leftWheelSpeed]
    data.leftWheelSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightWheelSpeed]
    data.rightWheelSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftShoulderAngle]
    data.leftShoulderAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightShoulderAngle]
    data.rightShoulderAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftElbowAngle]
    data.leftElbowAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightElbowAngle]
    data.rightElbowAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftArmExtension]
    data.leftArmExtension = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightArmExtension]
    data.rightArmExtension = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftGripperAngles]
    data.leftGripperAngles = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    // Deserialize message field [rightGripperAngles]
    data.rightGripperAngles = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mmmros/Movement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b79e7ecaa7e231855c31617cdebe463';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 leftWheelSpeed
    float64 rightWheelSpeed
    float64 leftShoulderAngle
    float64 rightShoulderAngle
    float64 leftElbowAngle
    float64 rightElbowAngle
    float64 leftArmExtension
    float64 rightArmExtension
    float64[5] leftGripperAngles
    float64[5] rightGripperAngles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Movement(null);
    if (msg.leftWheelSpeed !== undefined) {
      resolved.leftWheelSpeed = msg.leftWheelSpeed;
    }
    else {
      resolved.leftWheelSpeed = 0.0
    }

    if (msg.rightWheelSpeed !== undefined) {
      resolved.rightWheelSpeed = msg.rightWheelSpeed;
    }
    else {
      resolved.rightWheelSpeed = 0.0
    }

    if (msg.leftShoulderAngle !== undefined) {
      resolved.leftShoulderAngle = msg.leftShoulderAngle;
    }
    else {
      resolved.leftShoulderAngle = 0.0
    }

    if (msg.rightShoulderAngle !== undefined) {
      resolved.rightShoulderAngle = msg.rightShoulderAngle;
    }
    else {
      resolved.rightShoulderAngle = 0.0
    }

    if (msg.leftElbowAngle !== undefined) {
      resolved.leftElbowAngle = msg.leftElbowAngle;
    }
    else {
      resolved.leftElbowAngle = 0.0
    }

    if (msg.rightElbowAngle !== undefined) {
      resolved.rightElbowAngle = msg.rightElbowAngle;
    }
    else {
      resolved.rightElbowAngle = 0.0
    }

    if (msg.leftArmExtension !== undefined) {
      resolved.leftArmExtension = msg.leftArmExtension;
    }
    else {
      resolved.leftArmExtension = 0.0
    }

    if (msg.rightArmExtension !== undefined) {
      resolved.rightArmExtension = msg.rightArmExtension;
    }
    else {
      resolved.rightArmExtension = 0.0
    }

    if (msg.leftGripperAngles !== undefined) {
      resolved.leftGripperAngles = msg.leftGripperAngles;
    }
    else {
      resolved.leftGripperAngles = new Array(5).fill(0)
    }

    if (msg.rightGripperAngles !== undefined) {
      resolved.rightGripperAngles = msg.rightGripperAngles;
    }
    else {
      resolved.rightGripperAngles = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = Movement;
