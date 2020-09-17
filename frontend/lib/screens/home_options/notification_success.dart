import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../provider/auth.dart';
import '../../provider/deposit.dart';
import '../../widgets/ActionButton.dart';
import '../Home.dart';

class NotificationSuccessScreen extends StatelessWidget {
  final String amount;
  final String receiver;

  NotificationSuccessScreen({this.amount, this.receiver});
  static const route = 'response_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have deposited UGX $amount using number $receiver",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "1% has been taken off for your insurance",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  ActionButton(
          
                    label: "OK",
                    function: () => Navigator.pushNamed(context, Home.route),
                  )
                ],
              ),
            ),
    );
  }
}
