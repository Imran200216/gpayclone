import 'package:flutter/material.dart';

class BusinessGridProvider extends ChangeNotifier {
  bool isExpanded = false;
  int visibleItems =
      4; // Show 4 business items initially (3 items + "More" button)

  void toggleGridExpansion(int totalItems) {
    if (!isExpanded) {
      visibleItems = totalItems; // Show all business items (add another row)
    } else {
      visibleItems = 4; // Collapse back to 1 row (3 items + "More" button)
    }
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
