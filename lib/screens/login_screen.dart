import 'package:flutter/material.dart';
import 'package:fluttrt_logn_ui/screens/forgot_password_screen.dart';
import 'package:fluttrt_logn_ui/screens/sign_up_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  "Welcome Back,",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Make it work, make it right, make it fast.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // formfield
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: "E-mail",
                          hintText: "E-mail",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint),
                          suffixIcon: Icon(Icons.remove_red_eye_sharp),
                          labelText: "Password",
                          hintText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            showModalSection(context);
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: Text("LOGIN"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => SignUpScreen());
                            },
                            child: Text.rich(
                              TextSpan(
                                text: "Dont have an Account? ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Sign Up",
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showModalSection(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot password?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Select one of the options given below to reset your password",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            forgetBtns(
              icon: Icon(
                Icons.email_outlined,
                size: 60,
              ),
              title: "E-mail",
              subtitle: "Reset Via mail verfivation",
              onPressed: () {
                Navigator.pop(context);
                Get.to(() => ForgotPasswordScreen());
              },
            ),
            SizedBox(
              height: 20,
            ),
            forgetBtns(
              icon: Icon(Icons.mobile_friendly_outlined, size: 60),
              title: "Phone No",
              subtitle: "Reset Via phone verification",
              onPressed: () {
                Navigator.pop(context);
                Get.to(() => ForgotPasswordScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class forgetBtns extends StatelessWidget {
  const forgetBtns({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  subtitle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
