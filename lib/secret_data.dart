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
    DateTime time_1 = DateTime.parse('2024-07-21 08');
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
                      '抽獎資格獲取\n'
                      '給予 douobb 街頭聲望就可獲得資格\n\n'
                      '抽獎方式：以抽獎資格總數進行抽取，每人只會獲得 1 個獎項\n\n'
                      '獎項：\n'
                      '- 大獎 (主快 * 2) 1位\n'
                      '- 二獎 (主快 * 1) 3位\n'
                      '- 三獎 (10 cc) 3位 \n'
                      '- 參加獎 3 cc\n\n'
                      '* 新手如果獲得主快可以把獎項轉為 50cc or 紫包\n\n'
                      'Bonus：\n'
                      '額外的 100 cc獎池\n'
                      '根據參加者從按下聲望至 2024/9/12 前蒐集的公會資源量進行分配 (低標 1000資源)\n'
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