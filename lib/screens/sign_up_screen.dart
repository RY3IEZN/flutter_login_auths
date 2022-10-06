import 'package:flutter/material.dart';
import 'package:fluttrt_logn_ui/common/custom_textfield.dart';
import 'package:fluttrt_logn_ui/screens/login_screen.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/images/welcome-back-iamge.png"),
              ),
              Text(
                "Get Onboard!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Create your profile to start your journey",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // formField
              CustomTextField(
                labelTxt: 'Full Name',
                preIcon: Icon(Icons.person),
                hintext: "Full Name",
              ),
              CustomTextField(
                labelTxt: 'Email',
                preIcon: Icon(Icons.email),
                hintext: "E-mail",
              ),
              CustomTextField(
                labelTxt: 'Phone No',
                preIcon: Icon(Icons.phone),
                hintext: "Phone",
              ),
              CustomTextField(
                labelTxt: 'Password',
                preIcon: Icon(Icons.fingerprint),
                hintext: "Password",
                sufIcons: Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text("Sign Up "),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // OR SECTIOn
              Column(
                children: [
                  Text("OR"),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage(
                          "assets/images/google-logo.png",
                        ),
                        width: 25,
                      ),
                      label: Text(
                        "Sign in with google",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => LoginScreen());
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Already have an Account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
