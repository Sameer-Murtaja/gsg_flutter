import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gsg_flutter/data/book_model.dart';
import 'package:http/http.dart';

class Books extends StatefulWidget {
  Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List<BookModel> books = [];
  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var book = books[index];
        return ListTile(
          leading: Image.network(
            book.cover,
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
          title: Text(book.title),
          subtitle: Text(book.description),
        );
      },
      itemCount: books.length,
    );
  }

  fetchBooks() async {
    var response = await get(
      Uri.parse('https://potterapi-fedeperin.vercel.app/en/books'),
    );
    var data = jsonDecode(response.body);
    
  }
}
