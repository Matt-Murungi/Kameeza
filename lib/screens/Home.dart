import 'package:Kameeza/widgets/Heading.dart';
import 'package:Kameeza/widgets/HomeOptions.dart';
import 'package:Kameeza/widgets/SummaryCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading(),
            SummaryCard(),
            SizedBox(height: 40,),
            HomeOptions()
          ],
        ),
      ),
    );
  }
}
