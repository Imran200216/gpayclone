import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pagination_provider.dart';

class PaginatedListScreen extends StatelessWidget {
  const PaginatedListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PaginationProvider(),
      child: Scaffold(
        appBar: AppBar(title: Text("Pagination with Provider")),
        body: Consumer<PaginationProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: provider.scrollController,
                    itemCount:
                        provider.displayedData.length +
                        (provider.isLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index < provider.displayedData.length) {
                        return Card(
                          margin: EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(provider.displayedData[index]),
                          ),
                        );
                      } else {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
