import 'dart:convert';

import 'package:flutter_beamer_example/domain/data/book_service_response.dart';
import 'package:flutter_beamer_example/entity/book_result.dart';
import 'package:http/http.dart' as http;

class BookRepository {
  final String _urlBooks = "http://gutendex.com/books";
  final String _urlBestSellers = "http://gutendex.com/books?topic=Bestsellers";

  Future<BookResult> getBooks() async {
    final response = await http.get(Uri.parse(_urlBooks));

    if (response.statusCode == 200) {
      // Parse raw response
      BookServiceResponse bookServiceResponse = BookServiceResponse.fromJson(jsonDecode(response.body));

      // Convert response to entities
      return BookResult.map(bookServiceResponse);
    } else {

      throw Exception('Failed to load books');
    }
  }

  Future<BookResult> getBestSellers() async {
    final response = await http.get(Uri.parse(_urlBestSellers));

    if (response.statusCode == 200) {
      // Parse raw response
      BookServiceResponse bookServiceResponse = BookServiceResponse.fromJson(jsonDecode(response.body));

      // Convert response to entities
      return BookResult.map(bookServiceResponse);
    } else {

      throw Exception('Failed to load books');
    }
  }
}
