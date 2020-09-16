import 'package:Kameeza/widgets/AuthFormField.dart';
import 'package:Kameeza/widgets/auth/AuthIconButton.dart';
import 'package:flutter/material.dart';

import '../Home.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/auth.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                "Create Account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 20),
            AuthFormField(
              label: "Email",
              hint: "eg apio@example.com",
              textInputType: TextInputType.emailAddress,
            ),
            AuthFormField(
              label: "Password",
              hint: "eg apio@example.com",
              isObsure: true,
            ),
                 AuthFormField(
              label: "Confirm Password",
              hint: "eg apio@example.com",
              isObsure: true,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black45),
                  ),
                  AuthIconButton(
                    function: ()=>Navigator.pushNamed(context, Home.route),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("I have an Account"),
                  Text("Sign In"),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}




