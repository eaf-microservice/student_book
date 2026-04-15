// ignore_for_file: must_be_immutable, sort_child_properties_last, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:student_books/model/ad_helper.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:wakelock/wakelock.dart';

//=============================
late PdfTextSearchResult _searchResult;
late PdfViewerController _pdfViewerController;

class Book extends StatefulWidget {
  String NamePage;
  String IdBookInDrive;
  Book(this.NamePage, this.IdBookInDrive, {super.key});
  @override
  BookState createState() => BookState(NamePage, IdBookInDrive);
}

class BookState extends State<Book> {
  BookState(this.NamePage, this.IdBookInDrive);
  //================================variables===================================
  String NamePage;
  String IdBookInDrive;

  final AdWidget adWidget = AdWidget(ad: AdOpenBook.myBanner);
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  bool isoffline = false;
  StreamSubscription? connection;
  //============================================================================

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
    _pdfViewerController = PdfViewerController();
    _searchResult = PdfTextSearchResult();
    Wakelock.enable();
    (PdfPageChangedDetails details) =>
        _pdfViewerController.jumpToPage(details.newPageNumber);
    conx();
    AdOpenBook.myBanner.load();
  }

  @override
  void dispose() {
    Wakelock.disable();
    connection!.cancel;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: isoffline == false
            ? SizedBox(
                height: 50,
                child: adWidget,
              )
            : Visibility(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'المرجو التأكد من اتصالك بالأنترن والمحاولة مجددا',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(Icons.portable_wifi_off, size: 50.0),
                  ],
                ),
                visible: true,
              ),
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              NamePage,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            )),
        //actions: SearchWord('ذكر')),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: MyBook(
                'https://drive.google.com/uc?export=view&id=$IdBookInDrive',
                _pdfViewerController),
          ),
        ));
  }

  Widget MyBook(String bookAdresse, PdfViewerController controller) {
    return SfPdfViewer.network(
      bookAdresse,
      key: _pdfViewerKey,
      scrollDirection: PdfScrollDirection.horizontal,
      pageLayoutMode: PdfPageLayoutMode.single,
      canShowScrollHead: false, // to show the number of page
      pageSpacing: 5.0,
      controller: controller,
      currentSearchTextHighlightColor: Colors.yellow,
    );
  }
}
