
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../provider/auth.dart';
import '../../widgets/AuthFormField.dart';
import '../../widgets/ImageContainer.dart';
import '../../widgets/auth/AuthIconButton.dart';
import '../Home.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future _handleSignIn() async {
      String email = emailController.text;
      String password = passwordController.text;

      var response = await Provider.of<Auth>(context, listen: false)
          .signup(email, password);

      if (response != null) {
        Navigator.pushNamed(context, Home.route);
      }

      print(email);
    }

    return Scaffold(
      body: Provider.of<Auth>(context).isLoading()
          ? Center(
              child: SpinKitFadingCircle(
              color: Colors.blue,
              size: 100.0,
            ))
          : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: ImageContainer(
                      imageurl: 'assets/images/auth.png',
                    )),
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
                      controller: emailController,
                    ),
                    AuthFormField(
                      label: "Password",
                      hint: "Must be 6 characters long",
                      isObsure: true,
                      controller: passwordController,
                    ),
                    AuthFormField(
                      label: "Confirm Password",
                      hint: "Same password as above",
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
                            function: () => _handleSignIn(),
                            // Navigator.pushNamed(context, Home.route),
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
                          InkWell(
                              onTap: () =>
                                  Navigator.pushNamed(context, Login.route),
                              child: Text("Sign In")),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
          ),
    );
  }
}
