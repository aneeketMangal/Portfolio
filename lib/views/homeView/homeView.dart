import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/widgets/centerView/centerView.dart';
import 'package:portfolio/widgets/introduction/introduction.dart';
import 'package:portfolio/widgets/navBar/navbar.dart';
// import 'package:portfolio/widgets/navBar/navbar.dart';
import 'package:portfolio/widgets/top/top_section.dart';

// class HomeView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             CenteredView(
//               child: Column(
//                 children: [TopSection(), AboutSection()],
//               ),
//             ),
//             SizedBox(height: 3000),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
