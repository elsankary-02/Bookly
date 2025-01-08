import 'package:flutter/material.dart';

import '../../core/components/text_manger.dart';
import 'similer_books_list_view_widget.dart';

class SimilarBooksSectionsWidget extends StatelessWidget {
  const SimilarBooksSectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text('You Can Also Like',
            style: TextManger.textStyel14.copyWith(
              fontWeight: FontWeight.w600,
            )),
        const SizedBox(
          height: 16,
        ),
        const SimilerBooksListViewWidget(),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
