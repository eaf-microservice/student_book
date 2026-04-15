// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:student_books/Pages/matiere.dart';

//====================S5
class LevelThreeS1 extends StatelessWidget {
  const LevelThreeS1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الثالثة - الفصل الأول',
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
              Matiere('التربية والسلوك', '1bj5Kc4YxBAPmgzGOl6SxshCe_kL53wqy'),
              Matiere('العقيدة', '1zKOzIpVIt6_tEtr3RxAxzOJC7W86dSKO'),
              Matiere('الفقه العام', '17I9rMau5x9mJ9Ao-CiGNi-c2A9vapFjs'),
              Matiere('الفقه الحنبلي', '17jMONWtaN1rx6KdrepTp4XmkbMw1eQqv'),
              Matiere('الفقه الحنفي', '1hq63ppA6D7lWVfJzqZn7rJWqKi32YZHj'),
              Matiere('الفقه الشافعي', '1xSY1LZht66mPhJqAhITudNhfYXsJzUqS'),
              Matiere('الفقه المالكي', '1GQJyi6IOM_Jfzkv8H66774f5WQOjY3iJ'),
              Matiere('مصطلح الحديث', '1ejmmDPQsmQ0CPAPJS7TW1xZftmHNLpII'),
              Matiere('القواعد الفقهية', '1AIpbbmYAyc20sGBvsv5zJ3ywmljLyyvy'),
              Matiere('التفسير', '1Z0ZfCqd-yZySMTOi3oRsIdGwssrJhQ8-'),
              Matiere('التجويد', '1QW5Zn3io-_4cMNSTHt8RyRm8RjPY-BZO'),
              Matiere('أصول الفقه', '1nTF5QDNe50XKnb62Tk19fv7M_YCuB8me'),
              Matiere('الفرق والمذاهب', '1juv_OsEkzmsECtFl9M9893QUD2MSXOKF'),
              Matiere('التاريخ الخلافة', '1YBNkrdOB2Jjq6wFtKIgfqbr8xdRA1Tt5'),
              Matiere('الإعراب التطبيقي', '1MceOwA_BZLEk2viUhl16ggFsOw51htc3'),
            ],
          ),
        ));
  }
}

//==================S6

class LevelThreeS2 extends StatelessWidget {
  const LevelThreeS2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            'الفرقة الثالثة - الفصل الثاني',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        body: Center(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.count(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            crossAxisCount: 2,
            children: [
              Matiere('التربية والسلوك', '1j6S14XtK5yvaOOjncVkpuV9YFWuolori'),
              Matiere('العقيدة', '1P6tCpyGUshLQU-HMC-J7jd2e_dgLUynQ'),
              Matiere('الفقه العام', '19u1Vy-L1Na20Pl_ZTgAsK8UKCoyRWX80'),
              Matiere('الفقه الحنفي', '1RhhvXpadfs7XkaLsYad-81quWDMu4EhN'),
              Matiere('الفقه الحنبلي', '1D6Gd-UflllcFFJVSSEwO5mWDibTUUboL'),
              Matiere('الفقه المالكي', '1XmsPWrlHfdRCXl-87W5BS7Ez5SpP9o9b'),
              Matiere('الفقه الشافعي', '1QolXBE3pG9d6tHnuf2f0hyKvr_gBeD8E'),
              Matiere('مصطلح الحديث', '1ra59sdmKQDCZFqTuAst_dt4X9WI0kB-1'),
              //Matiere('القواعد الفقهية','XXXXX'),
              Matiere('الفرق والمذاهب', '1wosyCO67WKr-mAgEBmcvIMY_nTu4f4dp'),
              Matiere('تاريخ الخلافة الراشدة', '1kkdTTthfGGQuJBnqL76ewZLiOf1-4jQx'),
              Matiere('الإعراب التطبيقي', '189NfrEbG4Km6motflXGwHGMSvUgVnrYy'),
              Matiere('ضوابط الكتابة الصحيحة', '1I55bI00ANDoGLKWRIBIAVZx4y9sTwrc_'),
            ],
          ),
        )));
  }
}
