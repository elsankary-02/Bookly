import 'package:auto_route/auto_route.dart';
import '../../home/data/models/book_model/book_model.dart';
import '../../home/pages/book/book_page.dart';
import '../../home/pages/newset_book/newset_books_page.dart';
import '../../home/pages/search/search_page.dart';
import '../../home/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
      ];
}
