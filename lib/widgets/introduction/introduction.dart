import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';

import 'package:portfolio/Shared/widgets/components/section_title.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/about_bg.png"),
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
                Container(
                  constraints: BoxConstraints(maxWidth: 1110),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
                    "Myself Aneeket Mangal and I am a pre-final year student at Indian Institute of Technology, Ropar. I am currently serving as a Coordinator of Coding Club, IIT Ropar. I am a programming enthusiast working his way out through algorithms and frameworks. I strongly believe Python lists are better than C++ arrays. A Illustrator novice and a poetry fanatic, I love to whip descriptions of things I observe, be it textual or visual.\nP.S.: The above caricature is mine.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: kTextColor,
                        height: 1.2),
                  ),
                ),
                Center(
                  child: OutlineButton(
                    padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding,
                      horizontal: kDefaultPadding * 2.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    borderSide: BorderSide(color: Color(0xFFEDEDED)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/download.png",
                          height: 40,
                        ),
                        SizedBox(width: kDefaultPadding),
                        Text("My Resume"),
                      ],
                    ),
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
