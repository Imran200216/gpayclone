import 'package:flutter/material.dart';

class GridProvider extends ChangeNotifier {
  int crossAxisCount = 4; // Initial number of columns
  bool isExpanded = false;
  int visibleItems = 7; // Show only 7 people initially

  void toggleGridExpansion(int totalItems) {
    if (!isExpanded) {
      visibleItems = totalItems; // Show all people
    } else {
      visibleItems = 7; // Collapse back to 7 people
    }
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
