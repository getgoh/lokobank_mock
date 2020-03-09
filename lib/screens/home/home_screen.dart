import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lokobank_mock/constants.dart';
import 'package:lokobank_mock/data.dart';
import 'package:lokobank_mock/screens/home/views/cards_page.dart';
import 'package:lokobank_mock/screens/home/views/notes_page.dart';
import 'package:lokobank_mock/screens/home/views/tariffs_page.dart';

import 'home.dart';
import 'views/home_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: close_sinks
  final _bloc = HomeBloc();

  @override
  void initState() {
    super.initState();
  }

  final _pages = [
    HomePage(),
    CardsPage(),
    TariffsPage(),
    NotesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final HomeBloc _bloc = BlocProvider.of<HomeBloc>(context);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
          bloc: _bloc,
          builder: (context, state) {
            return SafeArea(
              child: Container(
                decoration: kBottomNavigationBoxDecoration,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                  child: GNav(
                      tabs: tabs,
                      selectedIndex: _bloc.selectedIndex,
                      onTabChange: (index) {
                        // add click event to bloc
                        _bloc.add(HomeNavbarClickEvent(selectedIndex: index));
                      }),
                ),
              ),
            );
          },
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
            bloc: _bloc,
            builder: (context, state) {
              return _pages[_bloc.selectedIndex];
            }),
      ),
    );
  }
}
