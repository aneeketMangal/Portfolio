import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/widgets/logo/logoStandard.dart';

import 'navbarItem.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: navBarHeight,
        color: Colors.black.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            LogoStandard(navLogo),
            SizedBox(
              width: 50,
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                for (var i in navBarItems)
                  Row(
                    children: <Widget>[
                      NavBarItem(i),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  )
              ],
            )
          ],
        ));
  }
}
