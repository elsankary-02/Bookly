import 'package:flutter/material.dart';

class SearchResultListViewWidget extends StatelessWidget {
  const SearchResultListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem( ),
            child: Text('data'),
          );
        },
      ),
    );
  }
}
