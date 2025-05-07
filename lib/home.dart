import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              right: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3),
              left: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3)
          )
      ),
      width: 800,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('CCO Helper',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                const Divider(height: 10.0,color: Colors.grey,),
                const Text('本工具由 douobb 提供，內含有一些遊戲的資料以及小工具，若這個小工具對你有幫助，可以給我一點鼓勵，若在使用本工具時有遇到 bug 或有其他建議，也歡迎私訊我。', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                const SizedBox(height: 20),
                const Text('功能簡介',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                const Divider(height: 10.0,color: Colors.grey,),
                const Text('本工具提供了黑市試算、紅包進度以及搜索推薦地區等功能。', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                const Divider(height: 30.0,color: Colors.grey,),
                const Text("by douobb 2024/05/21",style: TextStyle(color:  Color.fromRGBO(103, 103, 103, 1),fontSize: 18)),
              ],
            )
        ),
      ),
    );
  }
}