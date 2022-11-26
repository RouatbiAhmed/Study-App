
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyproject/view/Entertoken.dart';
import 'package:studyproject/view/voidcallback.dart';
abstract class CreateroomController extends GetxController{
createroom();

//late TextEditingController roomname;
final roomname=TextEditingController();

}
class CreateroomControllerImp extends CreateroomController{
  GlobalKey<FormState> formstate=new GlobalKey<FormState>();
  
  @override
 
    List<Widget> bodyElements = [];


  @override
  createroom() {
    var formdata=formstate.currentState;


   
  }
@override  
  void onInit() {


    super.onInit();
  }
  @override
  void dispose() {
roomname.dispose();

    super.dispose();
  }
}