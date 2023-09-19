import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_beamer_example/entity/book_result.dart';

class HorizontalCarousel extends StatelessWidget {
  BookResult bookResult;

  HorizontalCarousel({required this.bookResult, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: bookResult.bookList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Colors.red),
          height: 200,
          width: 250,
          child: Text(bookResult.bookList[index].name),
        );
      },
    );
  }
}
