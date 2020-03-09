import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lokobank_mock/constants.dart';
import 'package:lokobank_mock/data.dart';
import 'package:lokobank_mock/widgets/card_box.dart';
import 'package:lokobank_mock/widgets/modal_bottom.dart';
import 'package:lokobank_mock/widgets/operations_modal_bottom.dart';
import 'package:lokobank_mock/widgets/option_tile.dart';

import '../home.dart';

class HomePage extends StatelessWidget {
  _buildSegmentedControl(BuildContext context, int tabIndex) {
    return CupertinoSegmentedControl(
      padding: EdgeInsets.zero,
      borderColor: kGrayColor,
      selectedColor: kGrayColor,
      pressedColor: Colors.white,
      groupValue: tabIndex,
      onValueChanged: (value) {
        // send event to bloc
        BlocProvider.of<HomeBloc>(context).add(
          HomeTabClickEvent(passedIndex: value),
        );
      },
      children: <int, Widget>{
        0: Padding(
          child: Text(
            'Operations',
            style: kblueColorTextStyle,
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        1: Padding(
          child: Text(
            'Yet',
            style: kblueColorTextStyle,
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
      },
    );
  }

  _buildOperationsSubpage() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // show operations modal
              _showBottomModal(
                  context,
                  OperationsModalBottom(
                    operation: operationList[index],
                  ));
            },
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    operationList[index].icon,
                    width: 52.0,
                  )),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    operationList[index].name,
                    style: kblueColorTextStyle,
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    operationList[index].timeStamp,
                    style: TextStyle(
                      fontSize: 11.0,
                      color: kGrayColorDark,
                    ),
                  ),
                ],
              ),
              trailing: Text(
                '- \$ ${operationList[index].value}',
                style: kblueColorTextStyle.copyWith(fontSize: 18.0),
              ),
            ),
          );
        },
        itemCount: operationList.length,
      ),
    );
  }

  _buildYetSubpage() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            OptionTile(title: 'Card info', iconData: Icons.info),
            SizedBox(height: 12.0),
            OptionTile(title: 'Set/change PIN', iconData: Icons.dialpad),
            SizedBox(height: 12.0),
            OptionTile(title: 'Download details', iconData: Icons.assessment),
            SizedBox(height: 12.0),
            OptionTile(title: 'Tariff details', iconData: Icons.note),
          ],
        ),
      ),
    );
  }

  _showBottomModal(BuildContext context, Widget child) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 12.0),
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final HomeBloc _bloc = BlocProvider.of<HomeBloc>(context);

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double cardHeight = 0.26 * screenHeight;
    double cardWidth = 0.42 * screenWidth;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hello,',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    'Andrei',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'images/prof-image.jpg',
                      fit: BoxFit.fill,
                      width: 40.0,
                    ),
                  ),
                  SizedBox(width: 12.0),
                  GestureDetector(
                    onTap: () {
                      _showBottomModal(context, ModalBottom());
                    },
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: kGrayColor,
                      ),
                      child: Center(
                        child: Text(
                          '...',
                          style: TextStyle(
                              color: Color(0xff263b90),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              height: 0.3),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: kRoundedCornerBoxDecoration.copyWith(
                    color: kGrayColor,
                  ),
                  height: cardHeight / 2,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Color(0xff293e91),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                CardBox(
                    cardModel: cardList[0],
                    cardWidth: cardWidth,
                    cardHeight: cardHeight),
                SizedBox(width: 10),
                CardBox(
                    cardModel: cardList[1],
                    cardWidth: cardWidth,
                    cardHeight: cardHeight),
              ],
            ),
          ),
          SizedBox(height: 16),
          BlocBuilder<HomeBloc, HomeState>(
            bloc: _bloc,
            builder: (context, state) {
              return _buildSegmentedControl(context, _bloc.tabIndex);
            },
          ),
          SizedBox(height: 10.0),
          BlocBuilder<HomeBloc, HomeState>(
            bloc: _bloc,
            builder: (context, state) {
              if (_bloc.tabIndex == 0) {
                return _buildOperationsSubpage();
              } else {
                return _buildYetSubpage();
              }
            },
          ),
        ],
      ),
    );
  }
}
