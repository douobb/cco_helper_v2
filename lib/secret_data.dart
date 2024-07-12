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
    DateTime time_1 = DateTime.parse('2023-07-30 08');
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
                  const SizedBox(height: 30),
                  const Text("活動",style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                  const SizedBox(height: 10),
                  const Text('參與條件：2024/9/1以前加入公會，且為常駐成員\n\n'
                      '抽獎時間：2024/9/12 21:00\n\n'
                      '獎池累積時間：2024/7/12 至 2024/9/12 抽獎前\n\n'
                      '抽獎資格獲取 & 獎池累積方式：\n'
                      '- 給予 douobb 街頭聲望，每個獲得 1 次抽獎資格，獎池加入 200 ai\n'
                      '- 蒐集公會資源，每 3 車獲得 1 次抽獎資格，獎池加入 200 ai (每人上限300 車，從第一次給予聲望時開始統計)\n'
                      '- 想到再加\n\n'
                      '抽獎方式：以抽獎資格總數進行抽取，每人只會獲得 1 個獎項 (特別獎除外)\n\n'
                      '獎項：\n'
                      '- 大獎 30% 獎池 * 1\n'
                      '- 二獎 10% 獎池 * 2\n'
                      '- 三獎 5% 獎池 * 4\n'
                      '- 參加獎 30% 獎池平分\n'
                      '- 特別獎 * ?\n\n'
                      '* 獎池累積方式及獎項可能會隨參加人數進行微調', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: const BorderSide(width: 2, color: Color.fromRGBO(192, 191, 14, 1)),
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse('https://docs.google.com/spreadsheets/d/1zf6WYOVhCoxcXoqEqk-dD_gHVIqCLnJ7rK5m7zlRHBw/edit?usp=sharing'), mode:LaunchMode.externalApplication);
                    },
                    child: const Text("目前參與狀況", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
                  ),
                ],
              )
          )
      ),
    );
  }
}