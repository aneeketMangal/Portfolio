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
      height: 150,
      width: 150,
      child: InkWell(
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: contactColors[position],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: InkWell(
              child: Image.asset(nameOfHandles[position]),
              onTap: () => launch(socialHandles[position]),
            ),
          ),
        ),
      ),
    );
  }
}
