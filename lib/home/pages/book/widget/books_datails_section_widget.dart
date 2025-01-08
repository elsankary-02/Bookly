import '../../../../core/components/custom_book_rating_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/custom_book_image_widget.dart';
import '../../../../core/components/text_manger.dart';
import '../../../data/models/book_model/book_model.dart';
import 'action_button_widget.dart';
import 'custom_book_details_app_bar_widet.dart';

class BooksDatilsSectionWidget extends StatelessWidget {
  const BooksDatilsSectionWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBarWidget(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImageWidget(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: TextManger.textStyel30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            bookModel.volumeInfo!.authors![0],
            style: TextManger.textStyel18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        CustomBookRatingWidget(
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          count: bookModel.volumeInfo?.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 35,
        ),
        const ActionButtonWidget(),
      ],
    );
  }
}
