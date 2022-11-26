  
  /*
  import 'package:studyproject/view/Entertoken.dart';
import 'package:studyproject/view/voidcallback.dart';
  
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyproject/view/createroomcontroller.dart';
import 'package:studyproject/view/textformfeild.dart';
import 'package:studyproject/view/validator.dart';


CreateroomControllerImp controller=Get.put(CreateroomControllerImp());


 GlobalKey<FormState> formstate=new GlobalKey<FormState>(); 

Future <String?>openDialog()=>showDialog<String>(context: context, builder: (BuildContext context)=>AlertDialog(
    title: Text("The room name"),
    content: Form(
  key:formstate,
      child: 
   
            CustomTextForm(valid:(val){return validInput(val!, 5, 20, "roomname");},hinttext: "enter your room name",mycontroller: controller.roomname,icondata: Icons.password_outlined),
    ),

    actions: [
      TextButton(
        onPressed:(){
          if (formstate.currentState!.validate()){
             Navigator.of(context).pop(); 
            print("zbarr");
           
           /* setState(() {
   
   // name=controller.text;

  });*/
            
            addBodyElement(); 
            
          }
          //Scaffold.of(context).showBottomSheet((context) => ContentType.text)
        print("t7cheeee");
        },
        //create ,
            child: Text("Create"))
    ],)
  );
  List<Widget> bodyElements = [EnterToken()];
int num = 0;
  void addBodyElement() {
     bodyElements.add(
    Padding(
      padding:  EdgeInsets.all(5.0),
      child:EnterToken(),
    ),
  );
  }


  */