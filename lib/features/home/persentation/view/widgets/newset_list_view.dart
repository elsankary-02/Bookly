import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_cilculer_indicator.dart';
import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../manger/newset_cubit/newset_book_cubit.dart';
import 'book_list_view_item.dart';

class NewsetListView extends StatelessWidget {
  const NewsetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
        builder: (context, state) {
      if (state is NewsetBookSuccess) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            final book = state.books[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(
                bookModel: book,
              ),
            );
          },
        );
      }
      if (state is NewsetBookFailuer) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return const CustomCirculerProgressIndicator();
      }
    });
  }
}
