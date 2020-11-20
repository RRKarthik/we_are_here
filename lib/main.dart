import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffd5cd),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Center(child: Text("We are here",style: TextStyle(fontSize: 50.0),)),
             SizedBox(height: 17.0,),
             FlatButton(
               child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 18.0),
                 child: Text("Login",style: TextStyle(fontSize: 20.0),),
               ),
               color: Colors.white,//Color(0xffffd5cd),//214252
               onPressed: (){

               },
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
               ),
             ),
             SizedBox(
               height: 20.0,
             ),
             FlatButton(
               child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 18.0),
                 child: Text("Register",style: TextStyle(fontSize: 20.0),),
               ),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
               ),
               color: Colors.white,//Color(0xffffd5cd),//214252
               onPressed: (){

               },
             ),
           ],
        ),
      ),
    );
  }
}

