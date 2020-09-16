import 'dart:ui';

import 'package:Kameeza/provider/deposit.dart';
import 'package:Kameeza/widgets/ActionButton.dart';
import 'package:Kameeza/widgets/ImageContainer.dart';
import 'package:Kameeza/widgets/InputField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DepositScreen extends StatelessWidget {
  static const route = 'deposit';
  @override
  Widget build(BuildContext context) {
    TextEditingController receiverController = TextEditingController();
    TextEditingController amountController = TextEditingController();

    Future _handlePostDeposit() async {
      Map data = {
        "from": {
          "displayName": "PayerFirst PayerLast",
          "idType": "MSISDN",
          "idValue": "260555555555"
        },
        "to": {"idType": "MSISDN", "idValue": "610298765432"},
        "amountType": "SEND",
        "currency": "ZMW",
        "amount": "10",
        "transactionType": "TRANSFER",
        "initiatorType": "CONSUMER",
        "note": "test payment",
        // "homeTransactionId": "{{$guid}}"
      };

      var response =
          await Provider.of<Deposit>(context, listen: false).postDeposit(data);
      print(response);
      return response;
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ImageContainer(imageurl: 'assets/images/img1.png',),
          ),
          SizedBox(
            height: 30,
          ),
          InputField(
            label: "Receiver",
            hint: "Who are you sending to?",
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

