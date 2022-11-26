
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyproject/main.dart';
import 'package:studyproject/view/createroombutton.dart';
import 'package:studyproject/view/createroomcontroller.dart';
import 'package:studyproject/view/textformfeild.dart';
import 'package:studyproject/view/validator.dart';
import 'addbodyelement.dart';


class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
late TabController tabbarcontroller;

@override
void initState(){ tabbarcontroller=new TabController(length: 2, vsync: this,initialIndex: 0);

super.initState();}
String name="";
CreateroomControllerImp controller=Get.put(CreateroomControllerImp());
GlobalKey<FormState> formstate=new GlobalKey<FormState>(); 




//______AlertDialog____________________________
  
  Future <String?>openDialog()=>showDialog<String>(context: context, builder: (context)=>AlertDialog(
    title: Text("The room name"),
    content: Form(
    key:formstate,
    child: 
         CustomTextForm(valid:(val){return validInput(val!, 5, 20, "roomname");},hinttext: "enter your room name",mycontroller: controller.roomname,icondata: Icons.password_outlined),),
    actions: [
      TextButton(
        onPressed:(){
          if (formstate.currentState!.validate()){
             Navigator.of(context).pop((controller.roomname).text); 
                 setState(() {                  
                  name=(controller.roomname).text;
                  //(controller.roomname).clear();
                  print("you entred $name");
                  addBodyElement();});} },
                  child: Text("Create"))],));




  @override
  Widget build(BuildContext context) {
      return   
    Scaffold(
            appBar: AppBar(
            title: const Text('Lets Study' , style: TextStyle(color: Colors.blue,),),

      actions: <Widget>[
              IconButton(    
              icon: const Icon(Icons.exit_to_app),
              tooltip: 'Leave',
              onPressed: () {print("au revoir");},),],

//_______________TAB Bar______________
      bottom:  TabBar(
                controller: tabbarcontroller,
                indicatorColor:Colors.blue ,
                indicatorWeight:5,

                tabs: const [
            Tab(
                child: Align(
                alignment: Alignment.center, 
                child: Text("Created by you",  style: TextStyle(
                color: Colors.blue,),),),),
 
            Tab(
                child: Align(
                alignment: Alignment.center,
                child: Text("Invited",  style: TextStyle(
                color: Colors.blue,),),),),]),
                ),
    
      
    //floatingActionButton: Createroom  (onPressed: () {openDialog();},),           //_________________Create RoomBUTTON______________
 
            body: 
                TabBarView(
                controller: tabbarcontroller,
                children: [
  
  /* ListView(
        
        children: 
        //<Widget>
        [
          Column( 
            //SegmentedControlApp();
            children: bodyElements,
                                   //___________LIST VIEW__________________
        ),],),
*/

                                                           /*_____!!!!__ If you wonna add thr create room card remove the container and return the List view_____ */ 
           
            Container(child: Text("Created by u"), ),
      
            Container(child: Text("Invited"),)],));
   
  }
}




