import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/widgets/contact/contact.dart';
import 'package:portfolio/widgets/introduction/introduction.dart';
import 'package:portfolio/widgets/top/top_section.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ContactBox()
          ],
        ),
      ),
    );
  }
}
