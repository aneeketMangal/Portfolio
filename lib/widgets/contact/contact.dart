import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/ui/style.dart';
import 'package:portfolio/Shared/widgets/widgets.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.white,
        height: 100,
        width: double.infinity,
        // constraints: BoxConstraints(maxWidth: 1110),

        color: Colors.amber,
        child: Center(
            child: Text("Developed by Aneeket Mangal using Flutter web",
                style: h5.copyWith(color: Colors.black, fontSize: 30))));
  }
}
