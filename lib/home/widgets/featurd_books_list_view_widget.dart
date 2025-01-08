import 'package:auto_route/auto_route.dart';
import '../../core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/custom_book_image_widget.dart';
import '../../core/components/custom_cilculer_indicator.dart';
import '../../core/components/custom_error_widget.dart';
import '../manger/featured_books cubit/featured_books_cubit.dart';

class FeaturdBooksListViewWidget extends StatelessWidget {
  const FeaturdBooksListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      context.router.push(
                        BookRoute(
                          bookModel: state.books[index],
                        ),
                      );
                    },
                    child: CustomBookImageWidget(
                      imageUrl:
                          state.books[index].volumeInfo!.imageLinks!.thumbnail,
                    ),
                  ),
                );
              }),
        );
      } else if (state is FeaturedBooksFailuer) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return const CustomCirculerProgressIndicator();
      }
    });
  }
}
