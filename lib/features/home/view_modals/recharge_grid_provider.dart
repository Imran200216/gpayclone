import 'package:flutter/material.dart';

class RechargeGridProvider extends ChangeNotifier {
  bool isExpanded = false;
  int visibleItems = 4; // Initially, 3 items

  void toggleGridExpansion(int totalItems) {
    if (!isExpanded) {
      visibleItems = totalItems; // Show all items
    } else {
      visibleItems = 4; // Back to single row with 3 items
    }
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
