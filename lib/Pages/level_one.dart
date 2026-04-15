// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:student_books/Pages/matiere.dart';

class LevelOneS1 extends StatelessWidget {
  const LevelOneS1({Key? key}) : super(key: key);

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
            'الفرقة الأولى - الفصل الأول',
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
              Matiere('العقيدة', '13uU089pc9m_ivkwdrHIRvtia1i6S73Zj'),
              Matiere('التجويد', '1WWlgSMwGo2M5yn_fy8v4LAKtrmFPVEUI'),
              Matiere('الحديث', '1oBGbBRPwoEYcvGLZrmlyioVvKT_4U7yb'),
              Matiere('النحو', '1_xRkzTgE5-V8CNJewqqasPwDX_pAdvUT'),
              Matiere('الفقه', '1WUsv7c5eo8lGiUTeEPQP1-eaRow8ux55'),
              Matiere('أصول الفقه', '1bQlxYN6kcIU24eOFr_Tl9F9FvpOIMhcd'),
              Matiere('الآداب الإسلامية', '1B_gXEEEGO5tpCjiy4y1x44r_mwUdNG9X'),
              Matiere('مصطلح الحديث', '1wHjRuvkzrBa8PizmIyxDpIBdF6Fg1it4'),
            ],
          ),
        ) //
        );
  }
}

class LevelOneS2 extends StatelessWidget {
  const LevelOneS2({Key? key}) : super(key: key);
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
          'الفرقة الأولى - الفصل الثاني',
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
            Matiere('العقيدة', '1uy8vxMo6UoXSXZzqZTikEgFYptCoGia8'),
            Matiere('التجويد', '1lZI0KCfqS6uiqytdVAOqJWyRxx_toMCv'),
            Matiere('الحديث', '1qbuJA0xmnHkxtz5JP2Zh7rrcdYZZZ4RQ'),
            Matiere('النحو', '1l4X-903MILjK4yylCPTibwm5Aab0aXH-'),
            Matiere('الفقه', '1D6ecg-za-AX4XvIb7SJ8SjD_DAgngpSB'),
            Matiere('أصول الفقه', '1andwAd9g4f4ZnGf4t8sHdx664qb9QLg_'),
            Matiere('الآداب الإسلامية', '1IOgZDbr27TWVZJ8pt9QfZX7m-g-4o1xh'),
          ],
        ),
      ), //
    );
  }
}
