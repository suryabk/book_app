import 'package:flutter/material.dart';

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            _isBookmarked = !_isBookmarked;
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(
          _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
          color: Colors.white,
        ));
  }
}



    // return IconButton(
    //   icon: Icon(
    //     _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
    //     color: _isBookmarked ? Colors.blue : null,
    //   ),
    //   onPressed: () {
    //     setState(() {
    //       _isBookmarked = !_isBookmarked;
    //     });
    //   },
    // );