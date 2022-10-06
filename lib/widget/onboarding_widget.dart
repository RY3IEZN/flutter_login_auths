import 'package:flutter/material.dart';

class onBoardingWidget extends StatelessWidget {
  const onBoardingWidget({
    Key? key,
    required this.color,
    required this.imgUrl,
    required this.subTitle,
    required this.title,
    required this.pageCount,
  }) : super(key: key);

  final Color color;
  final String imgUrl;
  final String subTitle;
  final String title;
  final String pageCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 200, horizontal: 30),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
              image: AssetImage(
                imgUrl,
              ),
              height: MediaQuery.of(context).size.height * 0.2),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            pageCount,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
