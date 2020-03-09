import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  final int tabIndex;
  final int selectedIndex;

  const HomeState({this.tabIndex, this.selectedIndex});

  @override
  List<Object> get props => [tabIndex, selectedIndex];
}

class HomeTabInitialState extends HomeState {
  final int tabIndex;
  final int selectedIndex;

  HomeTabInitialState({this.tabIndex, this.selectedIndex});

  @override
  List<Object> get props => [tabIndex, selectedIndex];
}

class HomeTabClickState extends HomeState {
  final int tabIndex;

  HomeTabClickState({this.tabIndex});

  @override
  List<Object> get props => [tabIndex];
}

class HomeNavBarClickState extends HomeState {
  final int selectedIndex;

  HomeNavBarClickState({this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}
