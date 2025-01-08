import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/custom_book_image_widget.dart';
import '../../core/components/custom_cilculer_indicator.dart';
import '../../core/components/custom_error_widget.dart';
import '../manger/similer_books_cubit/similer_books_cubit.dart';

class SimilerBooksListViewWidget extends StatelessWidget {
  const SimilerBooksListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerbooksCubit, SimilerbooksState>(
      builder: (context, state) {
        if (state is SimilerbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: CustomBookImageWidget(
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        }
        if (state is SimilerbooksFailuer) {
          return CustomErrorWidget(errorMessage: state.errormassege);
        } else {
          return const CustomCirculerProgressIndicator();
        }
      },
    );
  }
}
