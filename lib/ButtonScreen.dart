import 'package:flutter/material.dart';
import 'package:we_are_here/MessageScreen.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    style: TextStyle(fontSize: 50.0, color: Colors.white),
                  ),
                ),
                elevation: 30.0,
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
