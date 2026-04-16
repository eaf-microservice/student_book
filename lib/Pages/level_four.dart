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
              Matiere('رابط الجوجل درايف',
                  'https://drive.google.com/drive/folders/1nGnKs94v-1vfKv5Qal-TkQPbW5B4wDfv'),
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
              Matiere('رابط الجوجل درايف',
                  'https://drive.google.com/drive/folders/1nGnKs94v-1vfKv5Qal-TkQPbW5B4wDfv'),
            ],
          ),
        ));
  }
}
