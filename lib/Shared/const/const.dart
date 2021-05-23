import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:hexcolor/hexcolor.dart';

const List<Color> appColors = [
  Colors.amber,
  Colors.green,
  Colors.red,
  Colors.purple
];

const List<String> route = ["/first", "/second", "/third", "/fourth", "/fifth"];

const List<String> socialHandles = [
  "https://www.facebook.com/aneeket.mangal/",
  "https://github.com/aneeketMangal/",
  "https://www.linkedin.com/in/aneeket-mangal-188485195/",
  "https://mail.google.com/mail/u/0/?view=cm&fs=1&to=aneeketmangal@gmail.com&body=Hello%20There!!&tf=1",
  "https://www.codechef.com/users/chal_ghar_chal"
];
const List<Buttons> buttonOfhandles = [
  Buttons.Facebook,
  Buttons.GitHub,
  Buttons.LinkedIn,
  Buttons.Email
];

const String resumeLink =
    "https://drive.google.com/file/d/1MeJZ0EtXfFe11jSDqk-PNk7sr9Fl86CV/view?usp=sharing";

List<String> nameOfHandles = [
  'assets/images/facebook.png',
  'assets/images/github.png',
  'assets/images/linkedin.png',
  'assets/images/gmail.png',
  'assets/images/codechef.png',
];

List<String> handle = [
  '/aneeket.mangal',
  '/aneeketMangal',
  '/aneeket-mangal-188485195',
  '/aneeketmangal',
  '/chal_ghar_chal'
];
List<Color> contactColors = [
  HexColor("#4267B2"),
  Colors.black26,
  HexColor("#0e76a8"),
  Colors.red,
  Colors.amber
];

const double navBarHeight = 70;
const List<double> navLogo = [80, 150];

const String background = 'assets/images/background.jpg';
const List<String> navBarItems = [
  "About Me",
  "Experience",
  "Projects",
  "Hobbies",
];

const List<String> navBarItemsDetails = [
  "I am a pre-final year student at IIT Ropar.",
  "Experience",
  "Courses",
  "Hobbies",
  "Project"
];

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);
