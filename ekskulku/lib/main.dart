import 'package:flutter/material.dart';
import 'package:school_management/profile.dart';
import 'package:school_management/dashboard.dart';
import 'package:school_management/home.dart';

void main() {
  runApp(SchoolManagement());
}

class SchoolManagement extends StatefulWidget {
  @override
  _SchoolManagementState createState() => _SchoolManagementState();
}

class _SchoolManagementState extends State<SchoolManagement> {
  int _selectedItemIndex = 0;
  final List pages = [
    HomePage(),
    Dashboard(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Color(0xFFF0F0F0),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.blueGrey[600]),
          currentIndex: _selectedItemIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedItemIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.dashboard),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
        body: pages[_selectedItemIndex]
      ),
    );
  }
}
