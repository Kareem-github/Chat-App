import 'package:flutter/material.dart';
import 'package:scholar_chat/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String message;
  
  final String idd;


  Message(this.message, this.idd);

  factory Message.fromJson(jsonData) 
  {
    return Message(jsonData[kMessage], jsonData['idd']);
  }
}
