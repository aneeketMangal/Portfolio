import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(background))),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
      alignment: Alignment.topCenter,
      constraints: BoxConstraints(minHeight: 900, maxHeight: 1200),
      child: child,
    );
  }
}
