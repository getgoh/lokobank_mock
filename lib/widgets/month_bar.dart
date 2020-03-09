import 'package:flutter/material.dart';

import '../constants.dart';

class MonthBar extends StatelessWidget {
  final String month;
  final bool isActive;

  const MonthBar({this.month, this.isActive});

  @override
  Widget build(BuildContext context) {
    var scaledHeight = MediaQuery.of(context).size.height * 0.22;
    var scaledWidth = MediaQuery.of(context).size.height * 0.01;
    return Container(
      height: scaledHeight,
      width: scaledWidth * 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 65,
            child: MonthVerticalBar(
              scaledWidth: scaledWidth,
              color:
                  this.isActive ? kMonthBarOrangeColor : kMonthBarInactiveColor,
            ),
          ),
          Expanded(
            flex: 18,
            child: MonthVerticalBar(
              scaledWidth: scaledWidth,
              color:
                  this.isActive ? kMonthBarYellowColor : kMonthBarInactiveColor,
            ),
          ),
          Expanded(
            flex: 15,
            child: MonthVerticalBar(
              scaledWidth: scaledWidth,
              color:
                  this.isActive ? kMonthBarBlueColor : kMonthBarInactiveColor,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            this.month,
            style: TextStyle(
                color: this.isActive
                    ? kMonthBarBlueColor
                    : kMonthBarInactiveColor),
          )
        ],
      ),
    );
  }
}

class MonthVerticalBar extends StatelessWidget {
  const MonthVerticalBar({
    this.scaledWidth,
    this.color,
  });

  final Color color;
  final double scaledWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: this.color,
      ),
      width: scaledWidth,
    );
  }
}
