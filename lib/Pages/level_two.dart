// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_books/Pages/matiere.dart';

class LevelTwoS1 extends StatelessWidget {
  const LevelTwoS1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الثانية - الفصل الأول',
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
              Matiere('التربية والسلوك', '120xulxPDtLo_hGj8-jUBgnLQJudllqLa'),
              Matiere('العقيدة', '19JusI_a4jCSUcY6Lx9i4tp2411zjvFmc'),
              Matiere('تاريخ التشريع', '1nWDjt3J6I5QQu7-r-eEt2FgWZeTG7dbl'),
              Matiere(' الفقه الحنفي', '1vlymL7h2mUnAiIcU8mLtMuJn7EqAKQBv'),
              Matiere('الفقه المالكي', '1iR_aomS7u3GlCCk5pv8M_Tcnnrm_L5Oi'),
              Matiere('الفقه الشافعي', '1Bw8dhvHsUAAVHeSmxqFpyohFb1azBDPY'),
              Matiere('الفقه الحنبلي', '17kKNca3AFuBEPj9KeJEqGXqInSFsiRlj'),
              Matiere('التفسير', '1khJX2R4_EZW_sGXtH2eTrJXbc9id-5km'),
              Matiere('البلاغة', '1EpsctC8MJU1bnIh5W0imoDakOxJdGEbc'),
              Matiere('علوم القرآن', '1B4snPk958Nw536ZuBjAEXzaQVZzxiSxl'),
              Matiere('السيرة النبوية', '1DKBqKbC8g2IzjifQauqWJ5U2KM3Aokel'),
            ],
          ),
        ) //
        );
  }
}

class LevelTwoS2 extends StatelessWidget {
  const LevelTwoS2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        elevation: 10.0,
        centerTitle: true,
        title: Text(
          'الفرقة الثانية - الفصل الثاني',
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
            Matiere('التربية والسلوك', '196UULVT99M4pug6gmBQd6V03APhf0zP6'),
            Matiere('العقيدة', '1y-W3Lx8jXD_i48LeQ4qwJXZa7ZqGgn3K'),
            Matiere('المواريث', '1SgvJbxMjJn3mf0a2PyYnddSIs8b-FojK'),
            Matiere('الفقه الحنفي', '16m9ra-iNECHqV0v4HkI3K28hWs5I7z7f'),
            Matiere('الفقه المالكي', '1sla4F20j2D7f51FBOjBWYxzFxlwFDO5Q'),
            Matiere('الفقه الشافعي', '1FIAMSG9wSWpoitFFxXboUmubjDPKk8_E'),
            Matiere('الفقه الحنبلي', '18khOZ64o9ei9yRpsRIJUxajY2jjWPWsN'),
            Matiere('التفسير', '1KKvNI5SUjzUOldMDfUIp-0UgjKnfmmsx'),
            Matiere('الصرف', '1N8eNn5cztXJE3l5KoUbMCUpfvtpzYmPR'),
            Matiere('علوم القرآن', '1RU22ELiB5XQE9wr3NLlYcoFsbHd0LeDB'),
            Matiere('السيرة النبوية', '1ZCeLHY8-oj5tvpyHllghzMOj-FS2JX_4'),
          ],
        ),
      ), //
    );
  }
}
