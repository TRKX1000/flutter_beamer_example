import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_beamer_example/data/book.dart';

class HorizontalCarousel extends StatelessWidget {
  List<Book> bookList;

  HorizontalCarousel({required this.bookList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: bookList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Colors.red),
          height: 200,
          width: 250,
          child: Text(bookList[index].name),
        );
      },
    );
  }
}
