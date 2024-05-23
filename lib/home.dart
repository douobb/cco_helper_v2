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
                const Text('本工具提供了黑市試算、紅包進度以及搜索推薦地區等功能，而機密資料為本工會成員專屬。', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                const SizedBox(height: 20),
                const Text('延伸閱讀',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                const Divider(height: 10.0,color: Colors.grey,),
                const Text('除了本工具之外，新手如果有需要教學的話，可以去看看作者所寫的新手教程系列文章 (目前緩慢更新中)', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                const SizedBox(height: 20),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: const BorderSide(width: 2, color: Color.fromRGBO(192, 191, 14, 1)),
                  ),
                  onPressed: () {
                    launchUrl(Uri.parse('https://douobb.github.io/2024/04/27/CCO%E6%95%99%E5%AD%B8-%E6%96%B0%E6%89%8B%E5%85%A5%E9%96%80/'), mode:LaunchMode.externalApplication);
                  },
                  child: const Text("CCO教學-新手入門", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
                ),
                const Divider(height: 30.0,color: Colors.grey,),
                const Text("by douobb 2024/05/21",style: TextStyle(color:  Color.fromRGBO(103, 103, 103, 1),fontSize: 18)),
              ],
            )
        ),
      ),
    );
  }
}