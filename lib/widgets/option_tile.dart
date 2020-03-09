import 'package:flutter/material.dart';
import 'package:lokobank_mock/constants.dart';

class OptionTile extends StatelessWidget {
  final IconData iconData;
  final String title;

  const OptionTile({this.iconData, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: kGrayColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 40.0,
            height: 40.0,
            child: Icon(
              this.iconData,
              color: Color(0xff263b90),
            ),
            decoration: BoxDecoration(
              color: kGrayColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(width: 20.0),
          Text(
            this.title,
            style: TextStyle(
              color: Color(0xff424242),
//              color: Color(0xff263b90),
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
