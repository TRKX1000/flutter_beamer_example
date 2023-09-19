import 'author_response.dart';

class BookResponse {
  static String responseFieldBookId = "id";
  static String responseFieldBookTitle = "title";
  static String responseFieldBookAuthors = "authors";
  static String responseFieldBookFormats = "formats";
  static String responseFieldBookFormatsJPEG = "image/jpeg";

  int id;
  String title;
  List<AuthorResponse> authors;
  String imageUrl;

  BookResponse({required this.id, required this.title, required this.authors, required this.imageUrl});

  factory BookResponse.fromJson(Map<dynamic, dynamic> json) {
    List<dynamic> authors = json[responseFieldBookAuthors];
    Iterable<AuthorResponse> authorListResponse = authors.map((authorMap) => AuthorResponse.fromJson(authorMap));

    String imageUrlJPEG = json[responseFieldBookFormats][responseFieldBookFormatsJPEG];

    return BookResponse(
      id: json[responseFieldBookId],
      title: json[responseFieldBookTitle],
      authors: authorListResponse.toList(),
      imageUrl: imageUrlJPEG,
    );
  }
}
