import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  bool loading = false;

  Map<String, String> _headers = {'Content-Type': 'application/json'};

  void setLoading(value) {
    loading = value;
    notifyListeners();
  }

  bool isLoading() {
    return loading;
  }

  Future _authenticate(String email, String password, String urlSegment) async {
    setLoading(true);
    var url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyBPDqaXENxkVimtBUUUkIROQQEiDjEz60k';
    final response = await http.post(
      url,
      body: json.encode(
        {'email': email, 'password': password, 'returnSecureToken': true},
      ),
      headers: _headers,
    );

    var decodedData = json.decode(response.body);
    print(decodedData);

    if (response.statusCode == 200 || response.statusCode == 201) {
      setLoading(false);
    }

    return decodedData;
  }

  Future signup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }
}
