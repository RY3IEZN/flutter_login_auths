import 'package:flutter/material.dart';
import 'package:fluttrt_logn_ui/screens/dynamic_island.dart';
import 'package:fluttrt_logn_ui/screens/forgot_password_screen.dart';
import 'package:fluttrt_logn_ui/screens/login_screen.dart';
import 'package:fluttrt_logn_ui/screens/on_boarding_screen.dart';
import 'package:fluttrt_logn_ui/screens/otp_screen.dart';
import 'package:fluttrt_logn_ui/screens/sign_up_screen.dart';
import 'package:fluttrt_logn_ui/screens/splash_screem.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        // darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        defaultTransition: Transition.rightToLeftWithFade,
        transitionDuration: Duration(milliseconds: 500),
        home: OtpScreen());
  }
}
