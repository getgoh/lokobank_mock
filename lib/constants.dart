import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

const kGrayColor = Color(0xffe1e2e5);
const kGrayColorDark = Color(0xffcdced1);

//const kBlueColor = Color(0xff545a76);

// segmentedcontrol styles
const kblueColorTextStyle = TextStyle(color: Color(0xff545a76));

final kRoundedCornerBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8.0),
);

// month_bar colors
const kMonthBarInactiveColor = Color(0xffd4d9df);
const kMonthBarBlueColor = Color(0xff263b90);
const kMonthBarYellowColor = Color(0xfffcc26b);
const kMonthBarOrangeColor = Color(0xffec6564);

// bottom navigation
final kBottomNavigationBoxDecoration = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
        spreadRadius: -10,
        blurRadius: 60,
        color: Colors.black.withOpacity(.20),
        offset: Offset(0, 15))
  ],
);
