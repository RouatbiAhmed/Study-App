
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:studyproject/view/Entertoken.dart';
import 'package:studyproject/view/createroomcontroller.dart';

CreateroomControllerImp controller=Get.put(CreateroomControllerImp());
List<Widget> bodyElements = [EnterToken(text: "",)];
int num = 0;
var name=(controller.roomname).text;
void addBodyElement() {
  
  bodyElements.add(
    
    Padding(
      padding:  EdgeInsets.all(10.0),
      child:EnterToken(text: "$name room",),
    ),
  );
}











//________________________________________HERE IS THE FUNCTION THAT ADD THR ROOM WIDGET TO THE BODY AFTER THE CREATION____________________