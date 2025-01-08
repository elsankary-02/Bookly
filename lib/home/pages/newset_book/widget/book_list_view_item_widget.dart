import 'package:auto_route/auto_route.dart';
import '../../../../core/router/router.dart';
import 'package:flutter/material.dart';

import '../../../../../constents.dart';
import '../../../../core/components/custom_book_image_widget.dart';
import '../../../../core/components/custom_book_rating_widget.dart';
import '../../../../core/components/text_manger.dart';
import '../../../data/models/book_model/book_model.dart';

class BookListViewItemWidget extends StatelessWidget {
  const BookListViewItemWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(BookRoute(bookModel: bookModel));
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImageWidget(
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      style: TextManger.textStyel20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo?.authors?[0] ?? "",
                    style: TextManger.textStyel14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'free',
                        style: TextManger.textStyel20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      CustomBookRatingWidget(
                        rating: bookModel.volumeInfo?.averageRating ?? 0,
                        count: bookModel.volumeInfo?.pageCount ?? 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
