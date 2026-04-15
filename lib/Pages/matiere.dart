// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:student_books/Pages/open_book.dart';
import 'package:url_launcher/url_launcher.dart';

//======================Tafrigh========================

class Matiere extends StatelessWidget {
  Matiere(this.NomMatiere, this.PageLivre, {super.key});
  String NomMatiere;
  String PageLivre; // Actually contains the Google Drive ID or a direct URL

  Future<void> _handleNavigation(BuildContext context) async {
    if (PageLivre.startsWith('http')) {
      final uri = Uri.parse(PageLivre);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Book(NomMatiere, PageLivre),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        width: 150.0,
        child: InkWell(
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      'assets/images/titre.jpg',
                      width: 150.0,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      minWidth: 130.0,
                      onPressed: () => _handleNavigation(context),
                      child: Text(
                        NomMatiere,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: () => _handleNavigation(context)));
  }
}

//==================Books===========================
class Livre extends StatelessWidget {
  Livre(this.NomMatiere, this.NomPageLivre, this.LienCouvre, {Key? key})
      : super(key: key);
  String NomMatiere;
  String NomPageLivre; // Actually contains the Google Drive ID or a direct URL
  String LienCouvre;

  Future<void> _handleNavigation(BuildContext context) async {
    if (NomPageLivre.startsWith('http')) {
      final uri = Uri.parse(NomPageLivre);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Book(NomMatiere, NomPageLivre),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => _handleNavigation(context),
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 150.0,
                    width: 100.0,
                    child: Image.asset(
                      'assets/$LienCouvre',
                      fit: BoxFit.fill,
                    ),
                  )),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  NomMatiere,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
