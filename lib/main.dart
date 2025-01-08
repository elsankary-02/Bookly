import 'core/router/router.dart';
import 'home/data/repos/home_repo_impl.dart';
import 'home/manger/featured_books%20cubit/featured_books_cubit.dart';
import 'home/manger/newset_cubit/newset_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constents.dart';
import 'core/utils/selver_locator.dart';

void main() {
  setupSelverLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBookCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewsetBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: router.config(),
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
