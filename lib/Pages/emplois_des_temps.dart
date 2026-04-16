// ignore_for_file: use_key_in_widget_constructors, no_logic_in_create_state, non_constant_identifier_names

import 'package:flutter/material.dart';

class Time1Years extends StatelessWidget {
  const Time1Years({super.key});

  @override
  Widget build(BuildContext context) {
    return const TimeList(
        'استعمال الزمن للفرقة الأولى', 'assets/emploi2Temp/Annee1.jpg');
  }
}

class Time2Years extends StatelessWidget {
  const Time2Years({super.key});

  @override
  Widget build(BuildContext context) {
    return const TimeList(
        'استعمال الزمن للفرقة الثانية', 'assets/emploi2Temp/Annee2.jpg');
  }
}

class Time3Years extends StatelessWidget {
  const Time3Years({super.key});

  @override
  Widget build(BuildContext context) {
    return const TimeList(
        'استعمال الزمن للفرقة الثالثة', 'assets/emploi2Temp/Annee3.jpg');
  }
}

class Time4Years extends StatelessWidget {
  const Time4Years({super.key});

  @override
  Widget build(BuildContext context) {
    return const TimeList(
        'استعمال الزمن للفرقة الرابعة', 'assets/emploi2Temp/Annee4.jpg');
  }
}

//=========================Open Time list=======================================
class TimeList extends StatelessWidget {
  final String Level;
  final String LinkofTime;
  const TimeList(this.Level, this.LinkofTime);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              Level,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            LinkofTime,
            fit: BoxFit.fill,
          ),
        ));
  }
}
