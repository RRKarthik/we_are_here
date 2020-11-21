import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Text_ extends StatelessWidget {
  String message;
  String sender;

  Text_(String mess, String sender) {
    this.message = mess;
    this.sender = sender;
  }
  _launchURL() async {
    if (await canLaunch(message)) {
      await launch(message);
    } else {
      throw 'Could not launch $message';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            GestureDetector(
              onTap:_launchURL,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                elevation: 10.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child:  Text('$sender might be in danger',style: TextStyle(fontSize: 20.0,color: Colors.blue),),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
