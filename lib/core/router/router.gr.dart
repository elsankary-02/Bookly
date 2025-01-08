// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [BookPage]
class BookRoute extends PageRouteInfo<BookRouteArgs> {
  BookRoute({
    Key? key,
    required BookModel bookModel,
    List<PageRouteInfo>? children,
  }) : super(
          BookRoute.name,
          args: BookRouteArgs(
            key: key,
            bookModel: bookModel,
          ),
          initialChildren: children,
        );

  static const String name = 'BookRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookRouteArgs>();
      return BookPage(
        key: args.key,
        bookModel: args.bookModel,
      );
    },
  );
}

class BookRouteArgs {
  const BookRouteArgs({
    this.key,
    required this.bookModel,
  });

  final Key? key;

  final BookModel bookModel;

  @override
  String toString() {
    return 'BookRouteArgs{key: $key, bookModel: $bookModel}';
  }
}

/// generated route for
/// [NewsetBooksPage]
class NewsetBooksRoute extends PageRouteInfo<void> {
  const NewsetBooksRoute({List<PageRouteInfo>? children})
      : super(
          NewsetBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsetBooksRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NewsetBooksPage();
    },
  );
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
