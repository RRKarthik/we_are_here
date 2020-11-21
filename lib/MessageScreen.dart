import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'text.dart';

User loggedInUser;

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final _fstore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffd5cd),
        body: SafeArea(
          child: Column(
            children: [
              StreamBuilder<QuerySnapshot>(
                  stream: _fstore.collection("coordinates").snapshots(),
                  builder: (context,snapshot){
                    List<Text_> content = [];
                    final texts = snapshot.data.docs.reversed;
                    for (var text in texts){
                      final longi =text.get('longitude');
                      final lati = text.get('latitude');
                      final sender = text.get('sender');
                      content.add(Text_("http://maps.google.com/maps?q=$lati,$longi",sender));
                    }
                   return Expanded(
                     child: ListView(
                       children: content,
                     ),
                   );


                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
