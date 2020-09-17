import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../provider/deposit.dart';
import '../../widgets/ActionButton.dart';
import '../../widgets/ImageContainer.dart';
import '../../widgets/InputField.dart';
import 'notification_success.dart';

class DepositScreen extends StatelessWidget {
  static const route = 'deposit';
  @override
  Widget build(BuildContext context) {
    TextEditingController receiverController = TextEditingController();
    TextEditingController amountController = TextEditingController();

    Future _handlePostDeposit() async {
      String receiver = receiverController.text;
      String amount = amountController.text;

      var response = await Provider.of<Deposit>(context, listen: false)
          .postDeposit(receiver, amount);
      print(response);

      if (response != null) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => NotificationSuccessScreen(amount:amount , receiver: receiver,)
        ));
      }
      return response;
    }

    return Scaffold(
      body: Provider.of<Deposit>(context).isLoading()
          ? Center(
              child: SpinKitFadingCircle(
              color: Colors.blue,
              size: 100.0,
            ))
          : 
       Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ImageContainer(
              imageurl: 'assets/images/img1.png',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InputField(
            label: "From number",
            hint: "Which number are you withdrawing from?",
            controller: receiverController,
            textInputType: TextInputType.phone,
          ),
          InputField(
            label: "Amount",
            hint: "How much are you sending ?",
            controller: amountController,
            textInputType: TextInputType.number,
          ),
          ActionButton(
            label: "Send Money",
            function: _handlePostDeposit,
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
