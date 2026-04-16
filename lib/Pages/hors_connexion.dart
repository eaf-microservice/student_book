// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HorsConnexion extends StatelessWidget {
  const HorsConnexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        centerTitle: true,
        title:  Text(
        'خطأ في الوصول للكتاب',
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),),*/
      body: Container(
        color: Colors.blueGrey,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.portable_wifi_off, size: 100.0),
              Text(
                'المرجو التأكد من اتصالك بالأنترنت\n والمحاولة مجددا',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100.0,
              ),
              Image.asset(
                'assets/images/EAF_off.png',
                width: 80.0,
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
