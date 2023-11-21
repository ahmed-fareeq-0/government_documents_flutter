import 'package:flutter/material.dart';
import 'package:government_documents/screens/documentsScreen.dart';
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
    DocumentsScreen(),
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
        // type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xff272829),
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
            icon: Icon(Icons.picture_in_picture),
            label: 'المستندات المرسلة',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.send, size: 30),
        backgroundColor: Color(0xff272829),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _screens[_currentIndex],
    );
  }
}
