import 'package:flutter/material.dart';

class HomeIconButton extends StatelessWidget {
  final String label;
  final IconData icon;

  HomeIconButton({
    this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: 70,
            color: Color(0xffBE5683),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
