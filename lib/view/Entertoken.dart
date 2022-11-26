import 'package:flutter/material.dart';


import 'package:studyproject/view/textformfeild.dart';

import 'materialbutton.dart';

class EnterToken extends StatelessWidget {

  final String text;
   EnterToken({Key? key, required this.text}) : super(key: key);
    //TokenControllerImp controller =  Get.put(TokenControllerImp());

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
           padding: EdgeInsets.all(20),   

        height: 200,                                                       //__________________ TEXTFORMFEILD OF THE TOKEN ____________________
        width:300,
        child: Column(
        
      children:[ 
       Text(text),
        CustomTextForm(valid:(val){},hinttext: "enter room token",icondata: Icons.password_outlined, mycontroller: null,),
        Materialbutton(text:"entrer",onPressed: (){},)]

 ),
        
          
        decoration: BoxDecoration(
          color:Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ), ),
   
      
  );
  }
}