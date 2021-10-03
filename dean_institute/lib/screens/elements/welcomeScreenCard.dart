import 'package:flutter/material.dart';
import 'package:dean_institute/constants/constants.dart';

class WelcomScreencard extends StatelessWidget {
  WelcomScreencard(
      {required this.image, required this.text1, required this.text2});

  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: blur_card_container_text_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Container(
            width: 40,
            height: 30,
            decoration: BoxDecoration(
              color: blur_card_container_text_color,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: FittedBox(
              child: Image.asset(image),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(text1),
              Text(text2),
            ],
          )
        ],
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  BodyText({required this.text, required this.tsize});
  final String text;
  final double tsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: tsize,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
