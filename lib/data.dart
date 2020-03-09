import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lokobank_mock/models/card_model.dart';
import 'package:lokobank_mock/models/operation.dart';

double tabsGap = 30;
var tabsPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 5);

final List<GButton> tabs = [
  GButton(
    gap: tabsGap,
    iconActiveColor: Color(0xff263b90),
    iconColor: Color(0xffe0e2e8),
    textColor: Color(0xff263b90),
    color: Color(0xfff3f5fc),
    iconSize: 20,
    padding: tabsPadding,
    icon: FontAwesomeIcons.creditCard,
    text: 'Home',
  ),
  GButton(
    gap: tabsGap,
    iconActiveColor: Color(0xff263b90),
    iconColor: Color(0xffe0e2e8),
    textColor: Color(0xff263b90),
    color: Color(0xfff3f5fc),
    iconSize: 24,
    padding: tabsPadding,
    icon: Icons.credit_card,
    text: 'Cards',
  ),
  GButton(
    gap: tabsGap,
    iconActiveColor: Color(0xff263b90),
    iconColor: Color(0xffe0e2e8),
    textColor: Color(0xff263b90),
    color: Color(0xfff3f5fc),
    iconSize: 24,
    padding: tabsPadding,
    icon: Icons.note,
    text: 'Tariffs',
  ),
  GButton(
    gap: tabsGap,
    iconActiveColor: Color(0xff263b90),
    iconColor: Color(0xffe0e2e8),
    textColor: Color(0xff263b90),
    color: Color(0xfff3f5fc),
    iconSize: 24,
    padding: tabsPadding,
    icon: Icons.message,
    text: 'Notes',
  )
];

final List<CardModel> cardList = [
  CardModel(
    balance: 2345.56,
    cardNumber: '5152',
    details: 'Corporate card',
    type: 'visa',
    monthExpiry: 12,
    yearExpiry: 24,
  ),
  CardModel(
    balance: 550.12,
    cardNumber: '5152',
    details: 'Corporate card',
    type: 'mastercard',
    monthExpiry: 12,
    yearExpiry: 24,
  ),
];

final List<Operation> operationList = [
  Operation(
    name: 'Netflix',
    value: 12.86,
    timeStamp: '16:32, 26 July 2019',
    icon: 'images/netflix.jpeg',
  ),
  Operation(
    name: 'App Store',
    value: 10.11,
    timeStamp: '11:25, 10 July 2019',
    icon: 'images/appstore.jpeg',
  ),
  Operation(
    name: 'Airbnb',
    value: 40.86,
    timeStamp: '09:10, 4 July 2019',
    icon: 'images/airbnb.jpeg',
  ),
  Operation(
    name: 'UI8',
    value: 70.55,
    timeStamp: '18:45, 2 July 2019',
    icon: 'images/ui8.jpeg',
  )
];
