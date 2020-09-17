
import 'package:flutter/material.dart';

import '../../widgets/ActionButton.dart';
import '../Home.dart';

class ResponseScreen extends StatelessWidget {
  static const route = 'response_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("A notification has been sent to your Save Buddy", style: TextStyle(fontSize: 18), textAlign: TextAlign.center,)),
          SizedBox(height:10),
          ActionButton(label: "OK", function: () => Navigator.pushNamed(context, Home.route),)

        ],
      ),
    );
  }
}
