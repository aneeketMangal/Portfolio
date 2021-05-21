import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/homeView/homeView.dart';
import 'package:portfolio/widgets/logo/logoAnimated.dart';

class IntroSplash extends StatefulWidget {
  @override
  _IntroSplashState createState() => _IntroSplashState();
}

class _IntroSplashState extends State<IntroSplash> {
  void initState() {
    super.initState();

    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => HomeView(),
      ),
      (r) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logoBannerAnimated(context),
            TypewriterAnimatedTextKit(
                // colors: appColors,
                speed: Duration(milliseconds: 200),
                text: ["Slay. Play. GG!!!"],
                textStyle: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(fontSize: 30),
                textAlign: TextAlign.start),
          ],
        ),
      ),
    );
  }
}
