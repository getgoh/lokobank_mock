import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomeTabClickEvent extends HomeEvent {
  final int passedIndex;

  HomeTabClickEvent({this.passedIndex});

  @override
  List<Object> get props => [passedIndex];
}

class HomeNavbarClickEvent extends HomeEvent {
  final int selectedIndex;
//  final int tabIndex;

  HomeNavbarClickEvent({this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}
