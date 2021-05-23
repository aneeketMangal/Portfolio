import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/widgets/components/recent.dart';
import 'package:portfolio/Shared/widgets/widgets.dart';
import 'package:portfolio/widgets/projects/components/card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.amber.withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/projects_bg.png"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 2 * kDefaultPadding),
        child: Column(
          children: [
            SectionTitle(
              title: "Projects",
              color: Colors.orange,
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            SizedBox(
              width: 1110,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: kDefaultPadding * 6,
                runSpacing: kDefaultPadding * 3,
                children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(index: index, press: () {}),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 5),
          ],
        ),
      ),
    );
  }
}
