import 'package:Kameeza/provider/auth.dart';
import 'package:Kameeza/provider/deposit.dart';
import 'package:Kameeza/screens/Home.dart';
import 'package:Kameeza/screens/auth/login.dart';
import 'package:Kameeza/screens/auth/signup.dart';
import 'package:Kameeza/screens/home_options/Deposit.dart';
import 'package:Kameeza/screens/home_options/SaveBuddy.dart';
import 'package:Kameeza/screens/home_options/response.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Deposit(),
        ),
        ChangeNotifierProvider.value(value: Auth())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.josefinSansTextTheme(),
          primaryIconTheme: IconThemeData(color: Color(0xffBE5683)),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SignUp(),
        routes: {
          Login.route: (context) => Login(),
          Home.route: (context) => Home(),
          SaveBuddy.route: (context) => SaveBuddy(),
          ResponseScreen.route: (context) => ResponseScreen(),
          DepositScreen.route: (context) => DepositScreen()
        },
      ),
    );
  }
}
