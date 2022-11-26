

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Materialbutton extends StatelessWidget {
 final String text;
 final void Function() onPressed;
  
  const Materialbutton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     Container(
      margin: EdgeInsets.all(20),
    child: MaterialButton(
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed:onPressed,child: Text(text),
    color: Colors.green,  
     ),);
  }
}

















/*

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Textfeild extends StatelessWidget {
   final String text;

  Textfeild({Key? key, required InputDecoration decoration, required controller, required this.text}) : super(key: key);
  
  late TextEditingController controller;
@override

/*void initState(){
  super.initState();
  controller=TextEditingController();
}
@override

void dispose(){
  controller.dispose();
super.dispose();
}*/

  @override
  Widget build(BuildContext context) {
    return
    Textfeild(   decoration: InputDecoration(hintText: Text(text)),
      controller: controller,   
      );

      
  }
}

*/


/*
void main() => runApp(MyApp());
const double paddingInset = 5;
Color tileColor = Colors.blue;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHHomePageState createState() => MyHHomePageState();
}

List<Widget> bodyElements = [];
int num = 0;

void addBodyElement() {
  bodyElements.add(
    Padding(
      padding: const EdgeInsets.all(paddingInset),
      child: Container(
        height: 500,                                                       //____ ELEMENTS__________
        width: double.infinity,
        child: Center(child: Text('This is section $num')),
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

class MyHHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Home')),
        
       
       
        leading: IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              bodyElements.clear();          //_____REFRESCH_______________
              num = 0;
            });
          },
        ),


      ),
      
      
      body: 
      
       ListView(
        children: <Widget>[
          Column(
            children: bodyElements,
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text('Add'),
        onPressed: () {
          num++;
          setState(() {
            addBodyElement();
          });
        },
      ),
    );
  }
}

*/