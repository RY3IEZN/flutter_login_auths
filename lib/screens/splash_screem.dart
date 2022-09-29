import 'package:flutter/material.dart';
import 'package:fluttrt_logn_ui/screens/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    // TODO: implement initState
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: Image(
                image: AssetImage("assets/images/splash-top-icon.png"),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: 80,
              left: animate ? 30 : -80,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ".appable/",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Learn to code.",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Free for Everyone",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: animate ? 200 : 0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Image(
                  image: AssetImage("assets/images/splash-screen-image.png"),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: animate ? 40 : 0,
              right: 30,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    Get.to(WelcomeScreen());
  }
}
