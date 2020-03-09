import 'dart:async';
import 'package:bloc/bloc.dart';

import 'home.dart';
import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int tabIndex = 0;
  int selectedIndex = 0;

  @override
  HomeState get initialState =>
      HomeTabInitialState(tabIndex: 0, selectedIndex: 0);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeTabClickEvent) {
      this.tabIndex = event.passedIndex;
      yield HomeTabClickState(tabIndex: event.passedIndex);
    } else if (event is HomeNavbarClickEvent) {
      this.selectedIndex = event.selectedIndex;
      yield HomeNavBarClickState(selectedIndex: event.selectedIndex);
    }
  }
}
