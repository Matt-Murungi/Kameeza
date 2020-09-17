import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType textInputType;
  final bool isObsure;
  final TextEditingController controller;
  AuthFormField(
      {this.label, this.hint, this.textInputType, this.isObsure = false, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
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
