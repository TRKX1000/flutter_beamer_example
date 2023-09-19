import 'package:flutter_beamer_example/domain/data/book_service_response.dart';

import 'book.dart';

class BookResult {
  int count;
  String? next;
  String? previuos;
  List<Book> bookList;

  BookResult({
    required this.count,
    required this.next,
    required this.previuos,
    required this.bookList,
  });

  factory BookResult.map(BookServiceResponse bookServiceResponse) {
    Iterable<Book> list = bookServiceResponse.results.map((bookServiceResponse) {
      return Book(
        name: bookServiceResponse.title,
        writter: bookServiceResponse.authors.join(""),
        prize: 30.0,
        rating: 4.8,
        imageUrl: bookServiceResponse.imageUrl,
      );
    });

    return BookResult(
      count: bookServiceResponse.count,
      next: bookServiceResponse.next,
      previuos: bookServiceResponse.previuos,
      bookList: list.toList(),
    );
  }
}
