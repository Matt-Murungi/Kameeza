import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Deposit with ChangeNotifier {
  bool loading = false;

  void setLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  bool isLoading() {
    return loading;
  }

  var url = "http://kameeza.hipipo.mojaloop-hackathon.io:4301/transfers";
  Map<String, String> _headers = {'Content-Type': 'application/json'};

  
  Future postDeposit(String receiver, String amount) async {
    setLoading(true);

    Map data = {
      "from": {
        "displayName": receiver,
        "idType": "MSISDN",
        "idValue": "260555555555"
      },
      "to": {"idType": "MSISDN", "idValue": "610298765432"},
      "amountType": "SEND",
      "currency": "ZMW",
      "amount": amount,
      "transactionType": "TRANSFER",
      "initiatorType": "CONSUMER",
      "note": "test payment",
      "homeTransactionId": "{{guid}}"
    };

    final response = await http.post(url,
        headers: _headers,
        body: json.encode(data),
        encoding: Encoding.getByName("utf-8"));

    var body = json.decode(response.body);

    if (response != null) {
      setLoading(false);

      print(response.statusCode);
    } else {
      print(response.statusCode);
    }

    return body;
  }
}
