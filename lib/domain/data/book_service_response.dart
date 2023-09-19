import 'dart:collection';

import 'package:flutter_beamer_example/domain/data/book_response.dart';

class BookServiceResponse {
  static String responseFieldCount = "count";
  static String responseFieldNext = "next";
  static String responseFieldPrevious = "previous";
  static String responseFieldResult = "results";

  int count;
  String? next;
  String? previuos;
  List<BookResponse> results;

  BookServiceResponse({
    required this.count,
    required this.next,
    required this.previuos,
    required this.results,
  });

  factory BookServiceResponse.fromJson(Map<dynamic, dynamic> json) {
    List<dynamic> hashMap = json[responseFieldResult];
    Iterable<BookResponse> bookListResponse = hashMap.map((bookMap) => BookResponse.fromJson(bookMap));

    return BookServiceResponse(
      count: json[responseFieldCount],
      next: json[responseFieldNext],
      previuos: json[responseFieldPrevious],
      results: bookListResponse.toList(),
    );
  }
}
