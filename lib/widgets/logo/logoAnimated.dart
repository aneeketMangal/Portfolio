import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';

Widget logoBannerAnimated(BuildContext context) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Image.asset(
          "assets/mainLogo.png",
          fit: BoxFit.cover,
        ),
      ),
      Expanded(
        flex: 1,
        child: ColorizeAnimatedTextKit(
            colors: appColors,
            speed: Duration(milliseconds: 400),
            text: ["the\ngame\ndome."],
            textStyle:
                Theme.of(context).textTheme.headline1.copyWith(fontSize: 40),
            textAlign: TextAlign.start),
      ),
    ],
  );
}
