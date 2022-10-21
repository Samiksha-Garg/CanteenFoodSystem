import 'package:flutter/material.dart';

import '../helper/enums.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int _currentindex = 0;
  MenuState _menuState = MenuState.Home;
  get currentIndex => _currentindex;

  get currentPage => _menuState;

  void toggleTabs(int index) {
    _currentindex = index;

    switch (index) {
      case 0:
        _menuState = MenuState.Home;
        break;

      case 1:
        _menuState = MenuState.Order;
        break;
      case 2:
        _menuState = MenuState.Settings;
        break;

      default:
        _menuState = MenuState.Home;
    }
    notifyListeners();
  }
}
