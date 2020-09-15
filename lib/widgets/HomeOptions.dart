
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'HomeScreenIcon.dart';

class HomeOptions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          HomeIconButton(
            label: "Save Buddy",
            icon: SimpleLineIcons.people,
          ),
             HomeIconButton(
            label: "Deposit ",
            icon: SimpleLineIcons.wallet,
          ),
             HomeIconButton(
            label: "Insurance",
            icon: FontAwesome.handshake_o,
          ),
             HomeIconButton(
            label: "Loan",
            icon: Fontisto.money_symbol,
          ),
        ],
      ),
    );
  }
}
