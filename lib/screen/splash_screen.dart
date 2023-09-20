import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_2/auth/signin.dart';
import 'package:flutter_app_2/const/image_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    openPage();
  }

  openPage() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignIn(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kImagePath.pic,
              height: (height / 10) * 1.5,
              width: (width / 10) * 2,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: (height / 10) * 0.3,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (index) => Container(
                          height: 8,
                          width: 8,
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: index == 1 ? Colors.blue : Colors.grey),
                        ))),
          ],
        ),
      ),
    );
  }
}
