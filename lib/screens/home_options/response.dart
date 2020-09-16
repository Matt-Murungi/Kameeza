import 'package:Kameeza/screens/Home.dart';
import 'package:Kameeza/widgets/ActionButton.dart';
import 'package:flutter/material.dart';

class ResponseScreen extends StatelessWidget {
  static const route = 'response_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("A notification has been sent to your Safe Buddy", style: TextStyle(fontSize: 18),),
          SizedBox(height:10),
          ActionButton(label: "OK", function: () => Navigator.pushNamed(context, Home.route),)

        ],
      ),
    );
  }
}
