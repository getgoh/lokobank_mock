import 'package:flutter/material.dart';
import 'package:lokobank_mock/models/card_model.dart';

import '../constants.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    @required this.cardWidth,
    @required this.cardHeight,
    @required this.cardModel,
  });

  final double cardWidth;
  final double cardHeight;
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              cardModel.type == 'visa'
                  ? 'images/visa.png'
                  : 'images/mastercard.png',
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  cardModel.details,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$${cardModel.balance}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'images/card_chip.png',
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '•••• ${cardModel.cardNumber}',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${cardModel.monthExpiry}/${cardModel.yearExpiry}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      width: cardWidth,
      height: cardHeight,
      decoration: kRoundedCornerBoxDecoration.copyWith(
        color: cardModel.type == 'visa' ? Color(0xff72cec1) : Color(0xff263b90),
      ),
    );
  }
}
