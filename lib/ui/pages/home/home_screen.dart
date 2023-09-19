import 'package:flutter/material.dart';
import 'package:flutter_beamer_example/di/dependency_injection.dart';
import 'package:flutter_beamer_example/domain/repository/book_repository.dart';
import 'package:flutter_beamer_example/entity/book_result.dart';
import 'package:flutter_beamer_example/ui/pages/home/widgets/HorizontalCarousel.dart';

class HomeScreen extends StatelessWidget {
  static const route = "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: injector.get<BookRepository>().getBooks(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              BookResult bookResult = snapshot.data as BookResult;
              return Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: HorizontalCarousel(
                      bookResult: bookResult,
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
