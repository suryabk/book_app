import 'package:book_app/model/book_data.dart';
import 'package:book_app/pages/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Book App'),
        ),
        body: const BookList());
  }
}

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Book book = bookList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(book: book)),
            );
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(book.imageAsset))),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            book.name,
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w800),
                          ),
                          Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                book.author,
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontStyle: FontStyle.italic),
                              )),
                          Text(
                            book.shortDescription,
                            style: const TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        );
      },
      itemCount: bookList.length,
    );
  }
}
