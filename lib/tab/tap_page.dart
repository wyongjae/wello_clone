import 'package:flutter/material.dart';
import 'package:wello_clone/tab/content/content_page.dart';
import 'package:wello_clone/tab/home/home_page.dart';
import 'package:wello_clone/tab/my/my_page.dart';
import 'package:wello_clone/tab/survey/survey_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;

  final _pages = const [
    HomePage(),
    SurveyPage(),
    ContentPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined),
            label: '설문',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tag_faces),
            label: '콘텐츠',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
