import 'package:flutter/material.dart';
import 'package:government_documents/screens/profileScreen.dart';
import 'package:government_documents/screens/SectionScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<String> _appBarTitles = [
    'الرئيسية',
    'الملف الشخصي',
  ];
  final List<Widget> _screens = [
    SectionScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff61677A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              _appBarTitles[_currentIndex],
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الملف الشخصي',
          ),
        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}
