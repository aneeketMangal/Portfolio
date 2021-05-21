import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
      child: Image.asset("assets/images/person.png"),
    );
  }
}
