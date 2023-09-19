import 'package:flutter_beamer_example/entity/book.dart';

import 'author_response.dart';

class BookResponse {

  static String responseFieldBookId = "id";
  static String responseFieldBookTitle = "title";

  int id;
  String title;
  // TODO map authors
  List<AuthorResponse> authors;

  BookResponse({
    required this.id,
    required this.title,
    required this.authors,
  });

  factory BookResponse.fromJson(Map<dynamic, dynamic> json) {

    return BookResponse(
      id: json[responseFieldBookId],
      title: json[responseFieldBookTitle],
      authors: []
    );
  }
}
