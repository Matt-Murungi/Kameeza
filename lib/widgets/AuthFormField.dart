import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType textInputType;
  final bool isObsure;
  AuthFormField(
      {this.label, this.hint, this.textInputType, this.isObsure = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 10),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: isObsure,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          labelStyle: TextStyle(
            color: Color(0xffBE5683),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
