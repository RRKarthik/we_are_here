import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffd5cd),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RawMaterialButton(
              onPressed: (){},
              elevation: 2.0,
              fillColor: Colors.black,
              child: Icon(Icons.warning,size: 50.0,color: Colors.white,),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),

    );
  }
}
