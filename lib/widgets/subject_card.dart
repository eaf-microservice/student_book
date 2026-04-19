// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_books/models/course_model.dart';
import 'package:student_books/services/navigation_helper.dart';

class SubjectCard extends StatelessWidget {
  final Subject subject;

  const SubjectCard({
    required this.subject,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      width: 150.0,
      height: 230.0,
      child: InkWell(
        child: Card(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/titre.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Center(
                    child: Text(
                      subject.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () => NavigationHelper.navigateToBook(
          context,
          subject.name,
          subject.driveId,
        ),
      ),
    );
  }
}
