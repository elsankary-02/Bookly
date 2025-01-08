import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/components/text_manger.dart';
import 'widgets/custom_search_text_field.dart';
import 'widgets/search_result_list_view_widget.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Search Result',
                style: TextManger.textStyel18,
              ),
              SizedBox(
                height: 16,
              ),
              SearchResultListViewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
