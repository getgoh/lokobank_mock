import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lokobank_mock/models/operation.dart';
import 'package:lokobank_mock/widgets/month_bar.dart';

import '../constants.dart';

class OperationsModalBottom extends StatelessWidget {
  final Operation operation;

  const OperationsModalBottom({this.operation});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                this.operation.icon,
                width: 75.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              this.operation.name,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MonthBar(month: 'Feb', isActive: false),
                MonthBar(month: 'Mar', isActive: false),
                MonthBar(month: 'Apr', isActive: false),
                MonthBar(month: 'May', isActive: false),
                MonthBar(month: 'June', isActive: false),
                MonthBar(month: 'July', isActive: true),
                MonthBar(month: 'Aug', isActive: false)
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('July'),
                Text(
                  '\$ ${operation.value * 2}',
                  style: TextStyle(
                      color: Color(0xffed706f), fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 10.0),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    operation.icon,
                    width: 52.0,
                  )),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    operation.name,
                    style: kblueColorTextStyle,
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    operation.timeStamp,
                    style: TextStyle(
                      fontSize: 11.0,
                      color: kGrayColorDark,
                    ),
                  ),
                ],
              ),
              trailing: Text(
                '- \$ ${operation.value}',
                style: kblueColorTextStyle,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    operation.icon,
                    width: 52.0,
                  )),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    operation.name,
                    style: kblueColorTextStyle,
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    operation.timeStamp,
                    style: TextStyle(
                      fontSize: 11.0,
                      color: kGrayColorDark,
                    ),
                  ),
                ],
              ),
              trailing: Text(
                '- \$ ${operation.value}',
                style: kblueColorTextStyle.copyWith(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
