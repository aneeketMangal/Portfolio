import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/widgets/components/section_title.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.amber.withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/projects_bg.png"),
        ),
      ),
      // margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      // constraints: BoxConstraints(maxWidth: 1110),
      child: Padding(
        padding: const EdgeInsets.only(top: 2 * kDefaultPadding),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionTitle(
                  title: "About Me",
                  color: Colors.green,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
                    "hullo",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: kTextColor,
                        height: 2),
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding * 3),
          ],
        ),
      ),
    );
  }
}
