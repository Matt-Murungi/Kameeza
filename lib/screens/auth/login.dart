import 'package:Kameeza/provider/auth.dart';
import 'package:Kameeza/widgets/AuthFormField.dart';
import 'package:Kameeza/widgets/ImageContainer.dart';
import 'package:Kameeza/widgets/auth/AuthIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../Home.dart';

class Login extends StatelessWidget {
  static const route = 'Login';
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future _handleLogin() async {
      String email = emailController.text;
      String password = passwordController.text;

      var response = await Provider.of<Auth>(context, listen: false)
          .login(email, password);

      print(email);
      if (response != null) {
        Navigator.pushNamed(context, Home.route);
      }
    }

    return Scaffold(
      body: Provider.of<Auth>(context).isLoading()
          ? Center(
              child: SpinKitFadingCircle(
              color: Colors.blue,
              size: 100.0,
            ))
          : Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ImageContainer(
                      imageurl: 'assets/images/auth.png',
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Welcome Back",
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
                    controller: emailController,
                  ),
                  AuthFormField(
                    label: "Password",
                    hint: "Hope you remember your password",
                    controller: passwordController,
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
                          "Sign In",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.black45),
                        ),
                        AuthIconButton(
                          function: _handleLogin,
                        )
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
                        Text("Forgot Password"),
                        InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Text("Sign Up")),
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
