import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failuer, List<BookModel>>> fetchSimilerBooks(
      {required String category});
}
