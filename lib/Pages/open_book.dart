// ignore_for_file: must_be_immutable, sort_child_properties_last, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:student_books/model/ad_helper.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

//=============================
late PdfViewerController _pdfViewerController;

class Book extends StatefulWidget {
  final String namePage;
  final String idBookInDrive;
  const Book(this.namePage, this.idBookInDrive, {super.key});
  @override
  BookState createState() => BookState();
}

class BookState extends State<Book> {
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

    conx();
    AdOpenBook.myBanner.load();
  }

  @override
  void dispose() {
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
            backgroundColor: Colors.teal[200],
            elevation: 10.0,
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.namePage,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.indigo,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 4.0),
                Text(
                  'كتاب',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                    color: Colors.indigo[300],
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            )),
        //actions: SearchWord('ذكر')),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: MyBook(
                kIsWeb
                    ? 'https://drive.google.com/file/d/${widget.idBookInDrive}/preview'
                    : 'https://drive.google.com/uc?export=download&id=${widget.idBookInDrive}&confirm=1',
                _pdfViewerController,
                context),
          ),
        ));
  }

  Widget MyBook(
      String bookAdresse, PdfViewerController controller, BuildContext ctx) {
    if (kIsWeb) {
      // On web, use embedded Google Drive viewer
      String driveId = widget.idBookInDrive;
      String iframeUrl = 'https://drive.google.com/file/d/$driveId/preview';

      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(ctx).size.height * 0.9,
              color: Colors.grey[200],
              child: webViewFallback(iframeUrl),
            ),
          ],
        ),
      );
    }

    // Mobile: Use SfPdfViewer
    return SfPdfViewer.network(
      bookAdresse,
      key: _pdfViewerKey,
      scrollDirection: PdfScrollDirection.horizontal,
      pageLayoutMode: PdfPageLayoutMode.single,
      canShowScrollHead: false,
      pageSpacing: 5.0,
      controller: controller,
      currentSearchTextHighlightColor: Colors.yellow,
      onDocumentLoaded: (PdfDocumentLoadedDetails details) {},
      onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
        _showErrorDialog(ctx, bookAdresse);
      },
    );
  }

  Widget webViewFallback(String iframeUrl) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('استخدم Google Drive مباشرة لعرض الملف'),
          SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () async {
              final uri = Uri.parse(iframeUrl);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri, mode: LaunchMode.platformDefault);
              }
            },
            icon: Icon(Icons.open_in_new),
            label: Text('فتح في Google Drive'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal[200],
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
          SizedBox(height: 24),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ملاحظة:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'لعرض الملف على الويب، تأكد من:',
                ),
                Text('• أن الملف مشارك علناً'),
                Text('• فتح الملف في Google Drive'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showErrorDialog(BuildContext ctx, String pdfUrl) {
    // Extract Drive ID from the URL
    String driveId = widget.idBookInDrive;
    String driveShareLink = 'https://drive.google.com/file/d/$driveId/view';

    showDialog(
      context: ctx,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: Text('خطأ في تحميل الكتاب'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('قد يكون الملف:'),
              SizedBox(height: 8),
              Text('• غير صحيح (ليس PDF)'),
              Text('• غير مشارك بشكل صحيح'),
              Text('• محتوي على حماية'),
              SizedBox(height: 16),
              if (kIsWeb)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('على الويب:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('تأكد من أن الملف مشارك علناً في Google Drive'),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: SelectableText(
                        driveShareLink,
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                      ),
                    ),
                  ],
                )
              else
                Text('جرب فتحه في المتصفح:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
            },
            child: Text('إغلاق'),
          ),
          if (!kIsWeb)
            ElevatedButton.icon(
              onPressed: () async {
                Navigator.pop(dialogContext);
                await _launchURL(driveShareLink);
              },
              icon: Icon(Icons.open_in_browser),
              label: Text('فتح في المتصفح'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[200],
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    try {
      final Uri uri = Uri.parse(url);

      if (await canLaunchUrl(uri)) {
        final result = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        if (result) {
        } else {
          _showLaunchError('فشل فتح المتصفح');
        }
      } else {
        _showLaunchError('لا يمكن فتح المتصفح على هذا الجهاز');
      }
    } catch (e) {
      _showLaunchError('خطأ: $e');
    }
  }

  void _showLaunchError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 4),
      ),
    );
  }
}
