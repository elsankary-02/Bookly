import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/components/custom_app_bar.dart';
import '../../../core/components/text_manger.dart';
import '../../widgets/featurd_books_list_view_widget.dart';
import 'widget/newset_list_widget.dart';

@RoutePage()
class NewsetBooksPage extends StatelessWidget {
  const NewsetBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                FeaturdBooksListViewWidget(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Newset Books',
                    style: TextManger.textStyel18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: NewsetListPage(),
            ),
          )
        ],
      ),
    );
  }
}
