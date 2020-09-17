import 'package:flutter/material.dart';

class AuthIconButton extends StatelessWidget {
  final Function function;

  AuthIconButton({this.function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: CircleAvatar(
        
        backgroundColor: Colors.black38,
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,

        ),
      ),
    );
  }
}
