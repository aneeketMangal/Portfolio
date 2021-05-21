import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/ui/style.dart';

class LogoStandard extends StatelessWidget {
  final List<double> dimenssions;
  const LogoStandard(this.dimenssions);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding),
        // height: dimenssions[0],
        // width: dimenssions[1],
        child: Text(
          "ANEEKET MANGAL",
          style: h5,
        ));
  }
}
