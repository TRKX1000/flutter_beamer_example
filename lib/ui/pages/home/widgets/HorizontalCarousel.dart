import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_beamer_example/entity/book.dart';
import 'package:flutter_beamer_example/entity/book_result.dart';

class HorizontalCarousel extends StatelessWidget {
  BookResult bookResult;

  HorizontalCarousel({required this.bookResult, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: bookResult.bookList.length,
        itemBuilder: (context, index) {
          Book book = bookResult.bookList[index];
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  book.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
