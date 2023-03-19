import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ot_apps/app/modules/login/views/login_view2.dart';

import '../controllers/login_controller.dart';
import 'login_view3.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image(
          image: AssetImage("assets/icons/bg.png"),
          fit: BoxFit.fill,
        )),
        Center(
            child: Column(children: [
          SizedBox(
            height: 126,
          ),
          Container(
            width: 225,
            height: 100,
            child: Image.asset(
              "assets/icons/logo3.png",
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Lets Get Started",
            style: TextStyle(
              color: Color(0xFF292929),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Ride with ease and convenience by \n using our vehicle service app!",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF808080)),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView2(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 2))
                  ]),
              width: 303,
              height: 49,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 22,
                      height: 23,
                      child: Image.asset("assets/icons/email.png")),
                  Text(
                    "              Sign With Email",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color(0xff808080),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Or Use Instant Sign Up",
            style: TextStyle(
                color: Color(0xff808080),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 2))
                  ]),
              width: 303,
              height: 49,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 22,
                      height: 23,
                      child: Image.asset("assets/icons/google2.png")),
                  Text(
                    "             Sign With Google",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color(0xff808080),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: Offset(0, 2))
                  ]),
              width: 303,
              height: 49,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 22,
                      height: 23,
                      child: Image.asset("assets/icons/apple2.png")),
                  Text(
                    "              Sign With Apple",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color(0xff808080),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          RichText(
            text: TextSpan(
                text: "Already Have an Account? ",
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontSize: 10,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "Sign In",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(LoginView3());
                        },
                      style: TextStyle(
                          color: Color(0xffFB5555),
                          fontWeight: FontWeight.bold))
                ]),
          ),
        ])),
      ]),
    );
  }
}