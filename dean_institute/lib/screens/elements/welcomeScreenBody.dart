import 'package:flutter/material.dart';
import 'package:dean_institute/constants/constants.dart';
import 'package:dean_institute/screens/elements/welcomeScreenCard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: 255,
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: double.infinity,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset("assets/images/main_bg.png"),
                ),
              ),
              SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "WELCOME TO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Expanded(
                              child: WelcomScreencard(
                                  image: "assets/images/star_image.png",
                                  text1: "Best Industry",
                                  text2: "Leaders"),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Center(
                            child: Expanded(
                              child: WelcomScreencard(
                                  image: "assets/images/book_stack.png",
                                  text1: "High School",
                                  text2: "Diploma"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: WelcomScreencard(
                                image: "assets/images/open_book.png",
                                text1: "Learn Courses",
                                text2: "Online"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 150),
                  height: 1,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset("assets/images/logo_main.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
        ),
        SizedBox(
          child: BodyText(text: 'Dean Institute ', tsize: 25),
        ),
        SizedBox(
          child: BodyText(text: '&', tsize: 20),
        ),
        SizedBox(
          child: BodyText(text: 'Fellowship', tsize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "We believe everyone has the capacity  to be creative.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),






      ],
    );
  }
}
