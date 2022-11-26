import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class CustomTextForm extends StatelessWidget {

 final String hinttext;
 //final String labeltext;
 final IconData icondata ;
 final TextEditingController? mycontroller;
 final String? Function(String?)? valid;

  CustomTextForm ({Key? key, required this.hinttext,  required this.icondata, required this.mycontroller, required this.valid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
             autovalidateMode: AutovalidateMode.always,
             validator: valid,
              controller:mycontroller,
              decoration: InputDecoration(
                hintText: hinttext,
                hintStyle: const TextStyle(fontSize: 14),
               // label: Text(labeltext),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
                suffixIcon: Icon(icondata),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                  
                )
              ),
            );
 
  }
}