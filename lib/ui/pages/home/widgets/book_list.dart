import 'package:flutter/material.dart';
import 'package:flutter_beamer_example/entity/book.dart';
import 'package:flutter_beamer_example/entity/book_result.dart';

class BookList extends StatelessWidget {
  BookResult bookResult;

  BookList({required this.bookResult, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookResult.bookList.length,
      itemBuilder: (context, index) {
        Book book = bookResult.bookList[index];
        // return Text(bookResult.bookList[index].name, style: TextStyle(color: Colors.white),);
        return Card(
          color: Colors.white12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    book.imageUrl,
                    height: 120,
                    width: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                          width: double.maxFinite,
                          child: Text(book.name, maxLines: 2, style: const TextStyle(color: Colors.white, fontSize: 20))),
                      const SizedBox(height: 10),
                      Text(book.writter, style: const TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
