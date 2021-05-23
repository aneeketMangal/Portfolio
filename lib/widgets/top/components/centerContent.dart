import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';

import 'card.dart';

class CenterContent extends StatelessWidget {
  final Size size;
  const CenterContent(this.size);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
              constraints:
                  BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
              width: double.infinity,
              color: Colors.white.withOpacity(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi There!!👋",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Aneeket\nMangal",
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      for (int i = 0; i < 4; i++) ContactCard(i),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
