import 'package:flutter/material.dart';
import 'package:flutter_beamer_example/data/book.dart';
import 'package:flutter_beamer_example/ui/pages/home/widgets/HorizontalCarousel.dart';

class HomeScreen extends StatelessWidget {
  static const route = "home";

  const HomeScreen({super.key});

  static List<Book> bookList = [
    Book(name: "Book 1", writter: "Writer 1", prize: 12.95, rating: 4.8),
    Book(name: "Book 2", writter: "Writer 2", prize: 12.95, rating: 4.8),
    Book(name: "Book 3", writter: "Writer 3", prize: 12.95, rating: 4.8),
    Book(name: "Book 4", writter: "Writer 4", prize: 12.95, rating: 4.8),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: HorizontalCarousel(
                bookList: bookList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
