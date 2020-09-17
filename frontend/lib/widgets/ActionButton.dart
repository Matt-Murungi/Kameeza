import 'package:flutter/material.dart';

import '../constants/styles.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Function function;
  ActionButton({this.label, this.function});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      child: new Text(
        label,
        style: SummaryCardBonusPointsTextStyle,
      ),
      onPressed: function,
    );
  }
}