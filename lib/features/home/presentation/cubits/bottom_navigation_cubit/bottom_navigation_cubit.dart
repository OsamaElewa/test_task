import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_task/features/assets/assets_view.dart';
import 'package:test_task/features/support/support_view.dart';

import '../../../../profile/profile_view.dart';
import '../../views/home_view.dart';
import 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationInitialState());

  static BottomNavigationCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavigation(int index) {
    currentIndex = index;
    emit(ChangeBottomNavigationState());
  }

  List<Widget> bodyScreens = const [
    HomeView(),
    AssetsView(),
    SupportView(),
    ProfileView()
  ];

  List<String> appBarTitles = const [
    'Home',
    'Assets',
    'Support',
    'Profile'
  ];

  List<BottomNavigationBarItem> bottomNavigationBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.add,
      ),
      label: 'Assets',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.support_agent,
      ),
      label: 'Support',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
      ),
      label: 'Profile',
    ),
  ];


  int current = 0;
  void changeCurrent(int index){
    current = index;
    emit(NewsChangeIndexState());
  }
}
