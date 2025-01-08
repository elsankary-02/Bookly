import 'package:auto_route/auto_route.dart';
import '../../../core/utils/selver_locator.dart';
import '../../data/repos/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';
import '../../manger/similer_books_cubit/similer_books_cubit.dart';
import '../../widgets/similar_books_section_widget.dart';
import 'widget/books_datails_section_widget.dart';

@RoutePage()
class BookPage extends StatefulWidget {
  const BookPage({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  void initState() {
    BlocProvider.of<SimilerbooksCubit>(context).featchSimilerBooks(
      category: widget.bookModel.volumeInfo!.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilerbooksCubit(
        getIt.get<HomeRepoImpl>(),
      ),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      BooksDatilsSectionWidget(
                        bookModel: widget.bookModel,
                      ),
                      const Expanded(
                        child: SizedBox(
                          height: 50,
                        ),
                      ),
                      const SimilarBooksSectionsWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
