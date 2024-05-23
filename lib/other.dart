import 'package:flutter/material.dart';
import 'link.dart';
import 'download.dart';

class Other extends StatelessWidget {
  Other({super.key});
  final List<Tab> myTabs = <Tab>[
    const Tab(child:Text('工具&教學',style: TextStyle(fontSize: 18,fontFamily: "GenSenRounded"))),
    const Tab(child:Text('遊戲下載',style: TextStyle(fontSize: 18,fontFamily: "GenSenRounded"))),
  ];

  final pages = [Link(), Download()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Material(
              color: const Color.fromRGBO(30, 30, 30, 1),
              child: Theme(
                  data: ThemeData().copyWith(splashColor: const Color.fromRGBO(20, 20, 20, 1)),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    indicatorColor: const Color.fromRGBO(30, 30, 30, 1),
                    unselectedLabelColor: const Color.fromRGBO(103, 103, 103, 1),
                    labelColor: const Color.fromRGBO(197, 226, 220, 1),
                    tabs: myTabs,
                  )
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[Link(), Download()],
          ),
        ),
      ),
    );
  }
}