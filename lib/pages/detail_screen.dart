import 'package:book_app/components/bookmark.dart';
import 'package:book_app/model/book_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Book book;
  const DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Book')),
      body: ListView(
        children: <Widget>[
          Image(
            image: AssetImage(book.imageAsset),
            height: 200,
          ),
          BookData(
              title: book.name,
              author: book.author,
              shortDesc: book.shortDescription,
              summary: book.description),
        ],
      ),
      floatingActionButton: const BookmarkButton(),
    );
  }
}

class BookData extends StatelessWidget {
  final String title;
  final String author;
  final String shortDesc;
  final String summary;
  const BookData(
      {super.key,
      required this.title,
      required this.author,
      required this.shortDesc,
      required this.summary});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 32,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
                color: Colors.grey[900]),
          ),
          const SizedBox(height: 8),
          Text(
            author,
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
                color: Colors.blueGrey[900]),
          ),
          const SizedBox(height: 8),
          Text(
            shortDesc,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'What is it about?',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                summary,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
