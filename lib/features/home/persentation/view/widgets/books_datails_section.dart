import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'action_button.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDatilsSection extends StatelessWidget {
  const BooksDatilsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyel30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            bookModel.volumeInfo!.authors![0],
            style: Styles.textStyel18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          count: bookModel.volumeInfo?.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 35,
        ),
        const ActionButton(),
      ],
    );
  }
}
