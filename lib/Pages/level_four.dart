// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_books/Pages/matiere.dart';

//=============S7
class LevelFourS1 extends StatelessWidget {
  const LevelFourS1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الرابعة - الفصل الأول',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.count(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            crossAxisCount: 2,
            children: [
              // Matiere('رابط الجوجل درايف',
              //     'https://drive.google.com/drive/folders/1nGnKs94v-1vfKv5Qal-TkQPbW5B4wDfv'),
              Matiere(
                  'تاريخ الدولة العباسية', '1qMCdjNIvJIQue68dkIRjvc4Wzlh66okI'),
              Matiere('التربية والسلوك', '1wLa9RFNiCJh4wb-Dfgqkq5qSkz_nStrp'),
              Matiere('الحديث الشريف 1', '12mW461wucLqYy4e3lsAqda0wDM2DFlFY'),
              Matiere('الحديث الشريف 2', '1OjKZwYZrzUyRuNNxDAwUrzRx99Q6pUos'),
              Matiere('العقيدة والتوحيد', '115XD4kv0OO9Ybrrawm3FMoqGmBo2JAY8'),
              Matiere(
                  'الفقـة قضايا معاصرة 1', '1E-Fe7MbPbW_GDyx034G06O519RN-Buqv'),
              Matiere(
                  'الفقـة قضايا معاصرة 2', '1MzWq31Z3ei-t4gP4BUeNZRe99U2qPA3g'),
              Matiere('الفكر المعاصر', '1qtL_vQoXMa9gfcgowBdHOzIF_CcwuzEb'),
              Matiere('المعاجم العربية', '1N0bDBPS8OaxGQ_jYz-c78KlINtPwixV_'),
              Matiere(
                  'تاريخ الأدب العربي', '1vGknuoZ8Gb956Fh6UagG5kQCov4yMPG0'),
              Matiere(
                  'مناهج البحث العلمي', '1DzFIB_fL7hOMgCW7G_aaUmxsF3cWIkuc'),
            ],
          ),
        ));
  }
}

//=======================S8
class LevelFourS2 extends StatelessWidget {
  const LevelFourS2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الرابعة - الفصل الثاني',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.count(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            crossAxisCount: 2,
            children: [
              Matiere('تاريخ الدولة العباسية ',
                  '17k-tC0HQcW8KqymbI26ZDvz9KBg7__9j'),
              Matiere('التربية والسلوك', '1C4sGKrvrdPm42wv89_Zt9yWeEux2VqWZ'),
              Matiere('العقيدة والتوحيد', '1iPZUQxDjCkI6YpqyfeMok0ZIvjF_xYUc'),
              Matiere(
                  'الفقـة قضايا معاصرة 1', '1FKwx98Su7vV_SiMpTsNIpDq6-Ti2gVeY'),
              Matiere(
                  'الفقـة قضايا معاصرة 2', '1FsqrJoOVur2iQ1JrYbPUJ8giOJv-bP76'),
            ],
          ),
        ));
  }
}
