import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/ui/style.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCard extends StatefulWidget {
  const ContactCard(this.position);
  final int position;

  @override
  _ContactCardState createState() => _ContactCardState(position);
}

class _ContactCardState extends State<ContactCard> {
  final int position;
  _ContactCardState(this.position);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2 + kDefaultPadding / 3),
        child: InkWell(
          child: Image.asset(nameOfHandles[position]),
          onTap: () => launch(socialHandles[position]),
        ),
      ),
    );
  }
}
