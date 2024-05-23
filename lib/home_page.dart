import 'package:flutter/material.dart';
import 'home.dart';
import 'data.dart';
import 'tool.dart';
import 'other.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
        child: Container(
          color: const Color.fromRGBO(40, 40, 40, 1),
          child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          right: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3),
                          left: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3)
                      )
                  ),
                  width: 800,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Scaffold(
                      body: SizedBox.expand(
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: (index) {
                            setState(() => _currentIndex = index);
                          },
                          children: <Widget>[const Home(), const Data(), Tool(), Other(),],
                        ),
                      ),
                      bottomNavigationBar: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        currentIndex: _currentIndex,
                        selectedFontSize: 16,
                        unselectedFontSize: 14,
                        backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
                        selectedItemColor: const Color.fromRGBO(197, 226, 220, 1),
                        unselectedItemColor: const Color.fromRGBO(103, 103, 103, 1),
                        onTap: (index) {
                          setState(() => _currentIndex = index);
                          _pageController.jumpToPage(index);
                        },
                        items: const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: '首頁'
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.sticky_note_2),
                            label: '資料'
                          ),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.apps),
                              label: '小工具'
                          ),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.insert_link),
                              label: '連結'
                          ),
                        ],
                      ),
                    ),
                  )
              )
          ),
        )
    );
  }
}
