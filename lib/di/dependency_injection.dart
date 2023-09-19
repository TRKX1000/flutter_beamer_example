import 'package:flutter_beamer_example/domain/repository/book_repository.dart';
import 'package:injector/injector.dart';

final injector = Injector.appInstance;

void registerDependencies(){
  injector.registerDependency<BookRepository>(() => BookRepository());
}