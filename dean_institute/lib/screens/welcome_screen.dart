import 'package:dean_institute/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:dean_institute/constants/constants.dart';
import 'package:dean_institute/screens/elements/welcomeScreenBody.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  controller=AnimationController(vsync: this, duration: Duration(seconds: 2), );
  controller.forward();
  controller.addListener(() {
    setState(() {
      if ((controller.value)==1.0) {
        Navigator.pushNamed(context, LoginScreen.id);
      }
    });
  });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:base_red_color,
      body: SafeArea(
        child: Body(),
      ),

        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Text(
            "Campus / Online",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
    );
  }
}
