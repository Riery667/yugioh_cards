import 'package:flutter/material.dart';

class TabManeger extends ChangeNotifier {
  int selectedTab = 0;

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }

  void goDeck() {
    selectedTab = 1;
    notifyListeners();
  }
}
