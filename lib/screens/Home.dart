import 'package:Kameeza/widgets/DrawerWidget.dart';
import 'package:Kameeza/widgets/Heading.dart';
import 'package:Kameeza/widgets/HomeOptions.dart';
import 'package:Kameeza/widgets/SummaryCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Home extends StatelessWidget {
    static const route = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.notifications),
          ),
        ],
      ),

      drawer: DrawerWidget(),

      body: Container(
        margin: EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading(),
            SummaryCard(),
            SizedBox(
              height: 40,
            ),
            HomeOptions()
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Color(0xffBE5683),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Entypo.text_document),
            title: Text("Activity"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
