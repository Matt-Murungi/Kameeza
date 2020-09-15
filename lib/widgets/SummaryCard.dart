import 'package:Kameeza/constants/styles.dart';
import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const SummaryHeadingTextStyle = TextStyle(
      fontSize: 29,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
gradient: LinearGradient(colors: [
  // Color(0xffBE5683),
  Colors.blue[900],
        // Color(0xff93B5E1),
        Colors.white

]),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Points",
                  style: SummaryCardBonusPointsTextStyle,
                ),
                Text(
                  "Buy Points",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xffC87941)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "120 points",
                  style: SummaryHeadingTextStyle,
                ),
                CircleAvatar(
                    backgroundColor: Color(0xffBE5683),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                    
                    ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Savings",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Shs 150,000",
                      style: SummaryCardMoneytextStyle,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Insurance",
                      style: TextStyle(
                        color: Color(0xffBE5683),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Shs 20,000", style: SummaryCardMoneytextStyle)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
