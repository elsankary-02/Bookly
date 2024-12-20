import '../../../../core/errors/failuers.dart';
import '../models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failuer, List<BookModel>>> fetchSimilerBooks(
      {required String category});
}
