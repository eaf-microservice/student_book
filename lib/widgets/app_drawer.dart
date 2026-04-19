// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_books/Pages/generic_level_page.dart';
import 'package:student_books/Pages/generic_books_page.dart';
import 'package:student_books/Pages/employment_schedule_page.dart';
import 'package:student_books/widgets/about.dart';
import 'package:student_books/services/navigation_helper.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal[300],
      width: 200.0,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200.0),
              levelTile('الفرقة الأولى', 1, context),
              levelTile('الفرقة الثانية', 2, context),
              levelTile('الفرقة الثالثة', 3, context),
              levelTile('الفرقة الرابعة', 4, context),
              SizedBox(height: 25.0),
              _DrawerButton(
                label: 'ادعمنا',
                onPressed: () => NavigationHelper.launchPaymentLink(context),
              ),
              SizedBox(height: 15.0),
              _DrawerButton(
                label: 'حول التطبيق',
                onPressed: () => _showAboutDialog(context),
              ),
              SizedBox(height: 15.0),
              _DrawerButton(
                label: 'الخروج',
                onPressed: () => SystemNavigator.pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    AboutMe(
      applicationName: 'كتاب الطالب',
      version: '0.0.2',
      logo: Image.asset(
        "assets/icon/icon.png",
        width: 100.0,
        height: 100.0,
      ),
      description:
          'تطبيق يحتوي على كل ما يحتاجه الطالب في جامعة صفوة من كتب لتعلم',
    ).showCustomAbout(context);
  }

  Widget levelTile(String level, int levelNum, BuildContext context) {
    return ExpansionTile(
      title: Text(
        level,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.lightGreenAccent,
        ),
      ),
      trailing: Icon(
        _customTileExpanded
            ? Icons.arrow_drop_down_circle
            : Icons.arrow_drop_down,
      ),
      children: [
        _DrawerMenuItem(
          label: 'استعمال الزمن للحصص',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmploymentSchedulePage(level: levelNum),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5.0)),
        _DrawerMenuItem(
          label: 'الكتب المرجعية',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GenericBooksPage(level: levelNum),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5.0)),
        _DrawerMenuItem(
          label: 'تفريغات الفصل الأول',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GenericLevelPage(level: levelNum, semester: 1),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5.0)),
        _DrawerMenuItem(
          label: 'تفريغات الفصل الثاني',
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GenericLevelPage(level: levelNum, semester: 2),
            ),
          ),
        ),
      ],
      onExpansionChanged: (bool expanded) {
        setState(() => _customTileExpanded = expanded);
      },
    );
  }
}

class _DrawerButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const _DrawerButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: 180.0,
      child: Text(
        label,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}

class _DrawerMenuItem extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const _DrawerMenuItem({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: 230.0,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
    );
  }
}
