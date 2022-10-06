import 'package:flutter/material.dart';
import 'package:fluttrt_logn_ui/screens/login_screen.dart';
import 'package:fluttrt_logn_ui/screens/sign_up_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(
                "assets/images/welcome-back-iamge.png",
              ),
              width: 500,
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Build Awesome Apps",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lets put your creativity on the development highway,craft apps that everyone love.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => SignUpScreen());
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: Text("Sign Up"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
