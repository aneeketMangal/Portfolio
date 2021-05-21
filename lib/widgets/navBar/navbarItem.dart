import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/ui/style.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        title,
        style: h6,
      ),
    );
  }
}
