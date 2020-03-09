import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'option_tile.dart';

class ModalBottom extends StatelessWidget {
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
          children: <Widget>[
            OptionTile(title: 'Activate card', iconData: Icons.credit_card),
            SizedBox(height: 12.0),
            OptionTile(title: 'Order a card', iconData: Icons.credit_card),
            SizedBox(height: 12.0),
            OptionTile(title: 'Open deposit', iconData: Icons.developer_board),
            SizedBox(height: 24.0),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(0xfff3f5fc),
                  border: Border.all(
                    color: Color(0xfff3f5fc),
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff263b90),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
