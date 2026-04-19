// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmploymentSchedulePage extends StatelessWidget {
  final int level;

  const EmploymentSchedulePage({
    required this.level,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              'استعمال الزمن',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(height: 4.0),
            Text(
              'الفرقة $level',
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
      body: InteractiveViewer(
        minScale: 1.0,
        maxScale: 4.0,
        interactionEndFrictionCoefficient: double.infinity,
        boundaryMargin: EdgeInsets.zero,
        child: RotatedBox(
          quarterTurns: 1,
          child: Image.asset(
            'assets/emploi2Temp/Annee$level.jpg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
