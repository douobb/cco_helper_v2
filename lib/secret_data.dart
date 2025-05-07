import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class SecretData extends StatefulWidget {
  const SecretData({super.key});

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<SecretData> {
  @override
  Widget build(BuildContext context) {
    DateTime time_1 = DateTime.parse('2025-05-04 08');
    DateTime currentTime = DateTime.now();
    Duration diff = currentTime.difference(time_1);
    int diffDate = diff.inDays-diff.inDays%28;
    Text t = const Text("");
    if(diff.inDays%28>=0 && diff.inDays%28<=6){
      t = Text("目前為佔領期間，本次佔領時間:\n ${time_1.add(Duration(days: diffDate)).month}/${time_1.add(Duration(days: diffDate)).day} 08:00 - ${time_1.add(Duration(days: diffDate+7)).month}/${time_1.add(Duration(days: diffDate+7)).day} 08:00",style: const TextStyle(color: Color.fromRGBO(220, 100, 235, 1),fontSize: 18));
    }else{
      t = Text("目前非佔領期間，下次佔領時間:\n ${time_1.add(Duration(days: (diffDate+28))).month}/${time_1.add(Duration(days: (diffDate+28))).day} 08:00 - ${time_1.add(Duration(days: (diffDate+35))).month}/${time_1.add(Duration(days: (diffDate+35))).day} 08:00",style: const TextStyle(color: Color.fromRGBO(220, 100, 235, 1),fontSize: 18));
    }
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              right: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3),
              left: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3
              )
          )
      ),
      width: 800,
      child:Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(43, 43, 43, 0.95),
                        border: Border.all(color: const Color.fromRGBO(220, 100, 235, 1)),
                        boxShadow: const [BoxShadow(color: Color.fromRGBO(220, 100, 235, 0.7),blurRadius: 10)]
                    ),
                    child: t,
                  ),
                ],
              )
          )
      ),
    );
  }
}