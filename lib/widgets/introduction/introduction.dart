import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/ui/style.dart';

import 'package:portfolio/Shared/widgets/components/section_title.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage("assets/images/about_bg.jpg"),
        // ),
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
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 1.7,
                    horizontal: kDefaultPadding,
                  ),
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                    // borderSide: BorderSide(color: Color(0xFFEDEDED)),
                  ),
                  child: InkWell(
                    onTap: () => launch(resumeLink),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/download.png",
                            height: 40,
                          ),
                          SizedBox(width: kDefaultPadding),
                          Text("My Resume", style: h4.copyWith(fontSize: 20)),
                        ],
                      ),
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
