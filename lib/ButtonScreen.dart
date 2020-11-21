import 'package:flutter/material.dart';
import 'package:we_are_here/MessageScreen.dart';
import 'locator.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

User loggedInUser;
Locator locator = Locator();

class ButtonScreen extends StatefulWidget {
  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  final _fstore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    locator.getLoc();
    getUser();
  }

  void getUser() async {
    final user = await _auth.currentUser;
    if(user != null){
       loggedInUser = user;
    }
  }

  @override
  Widget build(BuildContext context) {
    sleep(Duration(seconds: 3));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffd5cd),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    width: double.infinity,
                  )),
                  IconButton(
                    icon: Icon(
                      Icons.chat,
                      size: 45.0,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessageScreen()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 200.0,
              ),
              Center(
                  child: RaisedButton(
                disabledColor: Colors.black,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.0, vertical: 50.0),
                  child: Text(
                    "Help",
                    style: TextStyle(fontSize: 50.0, color: Colors.black),
                  ),
                ),
                elevation: 30.0,
                onPressed: () {
                  _fstore.collection('coordinates').add({
                    'longitude':locator.longitude,
                    'latitude':locator.latitude,
                    'sender': loggedInUser.email,

                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
