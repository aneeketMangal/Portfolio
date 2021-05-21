import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/widgets/navBar/navbar.dart';

import 'components/centerContent.dart';
import 'components/profilePic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ),
      child: Column(
        children: [
          NavBar(),
          SizedBox(height: 90),
          Container(
            height: 620,
            // margin:
            //     EdgeInsets.only(top: kDefaultPadding, left: kDefaultPadding * 3),
            width: 920,
            child: Stack(
              children: [
                CenterContent(size),
                Positioned(
                  bottom: 120,
                  right: 0,
                  child: PersonPic(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
