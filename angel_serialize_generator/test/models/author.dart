library angel_serialize.test.models.author;

import 'package:angel_framework/common.dart';
import 'package:angel_serialize/angel_serialize.dart';
import 'book.dart';
part 'author.g.dart';
part 'author.serializer.g.dart';

@serializable
abstract class _Author extends Model {
  String name;
  int age;
  List<Book> books;
  Book newestBook;

  @exclude
  String secret;

  @Exclude(canDeserialize: true)
  String obscured;
}

@serializable
abstract class _Library extends Model {
  Map<String, Book> collection;
}
