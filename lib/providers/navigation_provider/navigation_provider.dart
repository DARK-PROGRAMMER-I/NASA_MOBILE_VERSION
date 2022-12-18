import 'package:flutter/material.dart';
import 'package:nasa_mission_control/screens/home/home_screen.dart';

import '../../screens/upcoming/upcoming_screen.dart';

class NavigationProvider with ChangeNotifier{
  int _index = 0;
  int get index => _index;
  getIndex(int idx){
    _index = idx;
    notifyListeners();
  }

  List<Widget> pages= [
    HomeScreen(),
    UpcommingScreen(),
    HomeScreen()
  ];
}