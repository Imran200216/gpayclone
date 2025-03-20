import 'package:flutter/material.dart';

class PaginationProvider extends ChangeNotifier {
  final List<String> allData = List.generate(
    50,
    (index) => "Item ${index + 1}",
  );
  List<String> displayedData = [];
  ScrollController scrollController = ScrollController();
  int itemsPerPage = 20;
  bool isLoading = false;

  PaginationProvider() {
    _init();
  }

  void _init() {
    loadMoreData();

    /// Add scroll listener
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        loadMoreData();
      }
    });
  }

  void loadMoreData() async {
    if (isLoading || displayedData.length >= allData.length) return;

    isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 1)); // Simulate network delay

    int nextItemCount = displayedData.length + itemsPerPage;
    displayedData = allData.sublist(0, nextItemCount.clamp(0, allData.length));

    isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
