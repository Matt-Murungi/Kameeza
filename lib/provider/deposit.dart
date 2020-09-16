import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Deposit with ChangeNotifier {
  var dio = Dio();
  final url = "http://kameeza.hipipo.mojaloop-hackathon.io:4301/transfers";
  Map<String, String> _headers = {'Content-Type': 'application/json'};
  Future postDeposit(Map data) async {
    Map encodedData = {...data};
    // http.Response response = await http.post(url,
    //     headers: _headers,
    //     body: encodedData,
    //     encoding: Encoding.getByName("utf-8"));

    Response response = await dio.post(
      url,
    options: Options(
      headers: _headers
    ),
    data: json.encode(encodedData)
    );

    var body = json.decode(response.data);

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("yey");
    } else {
      print(response.statusCode);
    }

    return body;
  }
}
