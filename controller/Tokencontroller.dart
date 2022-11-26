

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class TokenController extends GetxController{
checktoken();


}
class  TokenControllerImp extends TokenController{
  late TextEditingController token;
 

  @override
 checktoken() {
   
  }
  
@override
  void onInit() {

token=TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {

token.dispose();
    super.dispose();
  }

}