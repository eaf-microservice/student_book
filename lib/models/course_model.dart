// ignore_for_file: unnecessary_new

class Course {
  final int level;
  final String levelNameAr;
  final List<Semester> semesters;
  final List<BookReference> referenceBooks;

  Course({
    required this.level,
    required this.levelNameAr,
    required this.semesters,
    required this.referenceBooks,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      level: json['level'] as int,
      levelNameAr: json['levelNameAr'] as String,
      semesters: (json['semesters'] as List)
          .map((e) => Semester.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceBooks: (json['referenceBooks'] as List)
          .map((e) => BookReference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Semester {
  final int number;
  final String title;
  final List<Subject> subjects;

  Semester({
    required this.number,
    required this.title,
    required this.subjects,
  });

  factory Semester.fromJson(Map<String, dynamic> json) {
    return Semester(
      number: json['number'] as int,
      title: json['title'] as String,
      subjects: (json['subjects'] as List)
          .map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Subject {
  final String name;
  final String driveId;
  final String? imageAsset;

  Subject({
    required this.name,
    required this.driveId,
    this.imageAsset,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      name: json['name'] as String,
      driveId: json['driveId'] as String,
      imageAsset: json['imageAsset'] as String?,
    );
  }
}

class BookReference {
  final String name;
  final String driveId;
  final String coverImage;

  BookReference({
    required this.name,
    required this.driveId,
    required this.coverImage,
  });

  factory BookReference.fromJson(Map<String, dynamic> json) {
    return BookReference(
      name: json['name'] as String,
      driveId: json['driveId'] as String,
      coverImage: json['coverImage'] as String,
    );
  }
}
