import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:student_books/models/course_model.dart';

class DataLoader {
  static Future<List<Course>> loadCourses() async {
    try {
      final jsonString = await rootBundle.loadString('assets/data/books.json');
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;
      final coursesList = jsonData['courses'] as List;

      return coursesList
          .map((course) => Course.fromJson(course as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Failed to load courses: $e');
    }
  }

  static Future<Course?> loadCourseByLevel(int level) async {
    try {
      final courses = await loadCourses();
      return courses.firstWhere((course) => course.level == level);
    } catch (e) {
      return null;
    }
  }

  static Future<Semester?> loadSemesterByLevelAndNumber(
      int level, int semesterNumber) async {
    try {
      final course = await loadCourseByLevel(level);
      if (course != null) {
        return course.semesters
            .firstWhere((sem) => sem.number == semesterNumber);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
