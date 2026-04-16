// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:student_books/Pages/hors_connexion.dart';
import 'package:student_books/model/ad_helper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//=================================Variables====================================
  bool _customTileExpanded = false;
  StreamSubscription? connection;
  bool isoffline = false;
  final AdWidget adWidget = AdWidget(ad: AdBannerHome.myBanner);
//==============================================================================

  Future conx() async {
    connection = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        setState(() {
          isoffline = true;
        });
      } else if (result == ConnectivityResult.mobile) {
        setState(() {
          isoffline = false;
        });
      } else if (result == ConnectivityResult.wifi) {
        setState(() {
          isoffline = false;
        });
      }
    });
    return isoffline;
  }

  @override
  void initState() {
    super.initState();
    conx();
    AdBannerHome.myBanner.load();
  }

  @override
  void dispose() {
    super.dispose();
    connection!.cancel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      bottomNavigationBar: isoffline == false
          ? SizedBox(
              height: 50,
              child: adWidget,
            )
          : Visibility(
              visible: false,
              child: Text('Not connected to any network'),
            ),
      endDrawer: isoffline == false
          ? Drawer(
              backgroundColor: Colors.teal[300],
              width: 200.0,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100.0,
                        ),
                        Level('الفرقة الأولى', 'Time1Years', 'BooksA1',
                            'Level1S1', 'Level1S2'),
                        Level('الفرقة الثانية', 'Time2Years', 'BooksA2',
                            'Level2S1', 'Level2S2'),
                        Level('الفرقة الثالثة', 'Time3Years', 'BooksA3',
                            'Level3S1', 'Level3S2'),
                        Level('الفرقة الرابعة', 'Time4Years', 'BooksA4',
                            'Level4S1', 'Level4S2'),
                        SizedBox(
                          height: 15.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      content: Text(
                                        'تم تطوير البرنامج من طرف \n'
                                        ' (Developper EAF)  \n'
                                        'تم تفريغ الصوتيات من طرف الأخ \n'
                                        'فهد بن عبد العزيز\n'
                                        'كل الحقوق محفوظة 2023 ', //Developed by EAF (C) Allright reserved
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                        textAlign: TextAlign.center,
                                      ),
                                      backgroundColor: Colors.greenAccent,
                                      actionsAlignment:
                                          MainAxisAlignment.center,
                                      actions: <Widget>[
                                        //SizedBox(width: 130.0,child: PayPalButton(donationText : "Support us",paypalButtonId: "3KY5H2BWJ5RBY"),),
                                        InkWell(
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'ادعمنا',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.red,
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Icon(
                                                  Icons.money,
                                                  color: Colors.red,
                                                ),
                                              ]),
                                          onTap: () {
                                            launchUrl(Uri.parse(
                                                'https://www.paypal.com/paypalme/FouadE0F'));
                                          },
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        InkWell(
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'تواصل معنا',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.red,
                                                      fontSize: 15),
                                                ),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Icon(
                                                  Icons.email,
                                                  color: Colors.red,
                                                ),
                                              ]),
                                          onTap: () {
                                            launchUrl(Uri.parse(
                                                'mailto:EAF.microservice@gmail.com'));
                                          },
                                        ),
                                      ],
                                    ));
                          },
                          minWidth: 180.0,
                          child: Text(
                            'حول التطبيق',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreenAccent),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          minWidth: 180.0,
                          child: Text(
                            'الخروج',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreenAccent),
                          ),
                        ),
                      ],
                    ),
                  )))
          : SizedBox(
              width: 200.0,
              child: HorsConnexion(),
            ),
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        elevation: 10.0,
        centerTitle: true,
        title: Text(
          'كلية العلوم الشرعية والعربية',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              'الكتب المرجعية وتفريغات الدروس لجميع الفرق',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigoAccent,
              ),
            ),
            SizedBox(
              height: 300.0,
              width: double.infinity,
              child: Image.asset('assets/images/image.jpg'),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Center(
                child: Directionality(
              textDirection: TextDirection.rtl,
              child: RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text: 'القناة الرسمية للكلية, على ',
                      style: new TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    new TextSpan(
                      text: 'انستغرام',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(Uri.parse('https://t.me/fosaas2'));
                        },
                    ),
                  ],
                ),
              ),
            )),
            Padding(padding: EdgeInsets.only(top: 100.0)),
            Text(
              'لا تنسونا من صلاح دعائكم \n ولكل من ساهم في هذا العمل',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.back_hand_outlined, //
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget Level(String level, String Emploi2Temp, String Livres,
      String semestre1, String semestre2) {
    return ExpansionTile(
      title: Text(
        level,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.lightGreenAccent),
      ),
      trailing: Icon(
        _customTileExpanded
            ? Icons.arrow_drop_down_circle
            : Icons.arrow_drop_down,
      ),
      children: [
        MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Emploi2Temp);
          },
          minWidth: 230.0,
          child: Text(
            'استعمال الزمن للحصص',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Livres);
          },
          minWidth: 230.0,
          child: Text(
            'الكتب المرجعية',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5.0)),
        MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, semestre1);
          },
          minWidth: 230.0,
          child: Text(
            'تفريغات الفصل الأول',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5.0)),
        MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, semestre2);
          },
          minWidth: 230.0,
          child: Text(
            'تفريغات الفصل الثاني',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
      ],
      onExpansionChanged: (bool expanded) {
        setState(() => _customTileExpanded = expanded);
      },
    );
  }
}
