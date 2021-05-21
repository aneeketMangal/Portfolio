import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/ui/style.dart';
import 'package:portfolio/Shared/widgets/widgets.dart';

import 'components/card.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/contact_bg.jpg"),
        ),
      ),
      height: 400,
      width: double.infinity,
      // constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      // color: Colors.amber,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              for (int i = 0; i < 5; i++) ContactCard(i),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          Text("Developed by Aneeket Mangal", style: h4)
        ],
      ),
    );
  }
}
