
import 'package:flutter/material.dart';


class Createroom extends StatelessWidget {
final void Function() onPressed;
Createroom ({Key? key,required this.onPressed,/* required ListView body*/}) : super(key: key);

List<Widget> bodyElements = [];
int num = 0;


  @override
  Widget build(BuildContext context) {       //___________________________ADD A NEW ROOM WIDGET_________________________
    return Container(
           child: FloatingActionButton(
           onPressed: onPressed,
           tooltip: 'create a new room',
            child: const Icon(Icons.add),));}}