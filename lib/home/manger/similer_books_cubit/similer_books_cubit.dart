import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';
import '../../data/repos/home_repo.dart';

part 'similerbooks_state.dart';

class SimilerbooksCubit extends Cubit<SimilerbooksState> {
  SimilerbooksCubit(this.homeRepo) : super(SimilerbooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchSimilerBooks({required String category}) async {
    emit(SimilerbooksLoading());
    final result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold(
      (failuer) {
        emit(
          SimilerbooksFailuer(failuer.errorMessage),
        );
      },
      (books) {
        emit(
          SimilerbooksSuccess(books),
        );
      },
    );
  }
}
