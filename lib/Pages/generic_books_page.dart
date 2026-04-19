// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_books/models/course_model.dart';
import 'package:student_books/services/data_loader.dart';
import 'package:student_books/widgets/book_card.dart';

class GenericBooksPage extends StatefulWidget {
  final int level;

  const GenericBooksPage({
    required this.level,
    super.key,
  });

  @override
  State<GenericBooksPage> createState() => _GenericBooksPageState();
}

class _GenericBooksPageState extends State<GenericBooksPage> {
  late Future<Course?> _courseFuture;

  @override
  void initState() {
    super.initState();
    _courseFuture = DataLoader.loadCourseByLevel(widget.level);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Course?>(
      future: _courseFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Colors.teal[100],
            appBar: AppBar(
              backgroundColor: Colors.teal[200],
              title: Text('جاري التحميل...'),
            ),
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return Scaffold(
            backgroundColor: Colors.teal[100],
            appBar: AppBar(
              backgroundColor: Colors.teal[200],
              title: Text('خطأ'),
            ),
            body: Center(child: Text('فشل تحميل البيانات')),
          );
        }

        final course = snapshot.data!;
        final levelName = course.levelNameAr;

        return Scaffold(
          backgroundColor: Colors.teal[100],
          appBar: AppBar(
            backgroundColor: Colors.teal[200],
            elevation: 10.0,
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'الكتب المرجعية',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 4.0),
                Text(
                  levelName,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.indigo[300],
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: course.referenceBooks
                  .map((book) => BookCard(book: book))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
