import 'package:flutter/material.dart';
import 'package:fluttrt_logn_ui/screens/welcome_screen.dart';
import 'package:fluttrt_logn_ui/widget/onboarding_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: controller,
            onPageChangeCallback: swiped,
            enableSideReveal: true,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            pages: [
              onBoardingWidget(
                  color: Colors.white,
                  title: "Build Awesome Apps",
                  subTitle:
                      "Lets start your Journey with us on this amazing and easy platform",
                  pageCount: "1/3",
                  imgUrl: "assets/images/on-boarding-image-1.png"),
              onBoardingWidget(
                  color: Color(0xfffddcdf),
                  title: "Learn from YouTube",
                  subTitle:
                      "Get video Tutorials of each topic to learn things easily",
                  pageCount: "2/3",
                  imgUrl: "assets/images/on-boarding-image-2.png"),
              onBoardingWidget(
                  color: Color(0xffffdcbd),
                  title: "Get Code & Resources",
                  subTitle:
                      "Save some time by just cupy pasting complete apps and learn from videos",
                  pageCount: "3/3",
                  imgUrl: "assets/images/on-boarding-image-3.png"),
            ],
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  onPrimary: Colors.white),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: TextButton(
              onPressed: () => controller.jumpToPage(page: 2),
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
          ),
          Positioned(
            top: 100,
            right: 30,
            child: TextButton(
              onPressed: () => Get.to(() => WelcomeScreen()),
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.grey.withOpacity(0.1)),
            ),
          ),
          Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
                effect: WormEffect(dotHeight: 5),
                activeIndex: controller.currentPage,
                count: 3),
          )
        ],
      ),
    );
  }

  void swiped(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
