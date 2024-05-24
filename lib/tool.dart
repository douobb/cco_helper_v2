import 'package:flutter/material.dart';
import 'black_market.dart';
import 'asu.dart';
import 'search_place.dart';
import 'secret_data.dart';

class Tool extends StatelessWidget {
  Tool({super.key});
  final List<Tab> myTabs = <Tab>[
    const Tab(child:Text('黑市',style: TextStyle(fontSize: 18,fontFamily: "GenSenRounded"))),
    const Tab(child:Text('紅包',style: TextStyle(fontSize: 18,fontFamily: "GenSenRounded"))),
    const Tab(child:Text('搜索',style: TextStyle(fontSize: 18,fontFamily: "GenSenRounded"))),
    const Tab(child:Text('機密',style: TextStyle(fontSize: 18,fontFamily: "GenSenRounded"))),
  ];

  final pages = [const BlackMarket(),const ASU(), const SearchPlace(), const SecretData()];

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
          body: const TabBarView(
            children: <Widget>[BlackMarket(), ASU(), SearchPlace(), SecretData()],
          ),
        ),
      ),
    );
  }
}