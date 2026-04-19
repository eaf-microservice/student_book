// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_books/models/course_model.dart';
import 'package:student_books/services/data_loader.dart';
import 'package:student_books/widgets/subject_card.dart';

class GenericLevelPage extends StatefulWidget {
  final int level;
  final int semester;

  const GenericLevelPage({
    required this.level,
    required this.semester,
    super.key,
  });

  @override
  State<GenericLevelPage> createState() => _GenericLevelPageState();
}

class _GenericLevelPageState extends State<GenericLevelPage> {
  late Future<Semester?> _semesterFuture;

  @override
  void initState() {
    super.initState();
    _semesterFuture =
        DataLoader.loadSemesterByLevelAndNumber(widget.level, widget.semester);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Semester?>(
      future: _semesterFuture,
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

        final semester = snapshot.data!;

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
                  semester.title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 4.0),
                Text(
                  'تفريغات الدروس',
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
            child: GridView.count(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              crossAxisCount: 2,
              children: semester.subjects
                  .map((subject) => SubjectCard(subject: subject))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
