import 'dart:ui';

import 'package:flutter/material.dart';
// Note: Adjust the import path if your project name is different
import 'package:datamodel_listdata/model/book_details.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookListScreen(),
    ),
  );
}

class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  // TODO 4: Create a List of BookDetails objects and add at least 3 books to it.
  // Example: BookDetails(title: "THE FROZEN RIVER", author: "Ariel Lawhon")
  List<BookDetails> books = [
    BookDetails(title: "THE FROZEN RIVER", author: "Ariel Lawhon"),
    BookDetails(title: "THE GREAT GATSBY", author: "F. Scott Fitzgerald"),
    BookDetails(title: "TO KILL A MOCKINGBIRD", author: "Harper Lee"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Book App"), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // TODO 5: Set the itemCount to the total number of items in your 'books' list
                itemCount: books.length,
                itemBuilder: (context, index) {
                  // TODO 6: Return a ListTile widget to display the book data
                  // - Set the 'title' parameter using a Text widget: Text(books[index].title)
                  // - Set the 'trailing' parameter using a Text widget for the author
                  return ListTile(
                    title: Text(books[index].title),
                    trailing: Text(books[index].author),
                    onTap: () {
                      print(books[index].title);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  // - Add an 'onTap' parameter with an anonymous function that prints the title to the console
}
