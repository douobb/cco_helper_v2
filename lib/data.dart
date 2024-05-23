import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Data extends StatelessWidget {
  const Data({super.key});
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
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('資料',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                Divider(height: 10.0,color: Colors.grey,),
                Text('這邊儲存了一些可能有用的文本資料可供查看。', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                SizedBox(height: 20),
                Text('裝備評級',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 20,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                Divider(height: 10.0,color: Colors.grey,),
                Text('裝備評級 = (MAX(主武, 特武) + 頭 + 身 + 褲 + 鞋) / 5', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                SizedBox(height: 20),
                Text('AI 經驗',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 20,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                Divider(height: 10.0,color: Colors.grey,),
                Text('AI 取得經驗 = (裝備評級 ^ 1.8 + 16) * 1.1 *12', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                SizedBox(height: 20),
                Text('搜索高收益區域',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 20,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                Divider(height: 10.0,color: Colors.grey,),
                Text('在某些區域的搜索物資價值會高於之前的所有地區：\n1_7_11_14_31_34_37_41_51_57'
                    '_61_64_67_77_84_91_97_107_114_127_131_154_177_187_197_201_221_271_274'
                    '_277_297_314_341_361_394_474_514_547_554_567_574_674', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                SizedBox(height: 20),
                Text('史詩獲取方式',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 20,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                Divider(height: 10.0,color: Colors.grey,),
                Text('各種史詩獲取方式與物品：\n掛機(快取)、地下城小怪(快取)/王(快取、裝備)/王房的箱子(裝備)、'
                    '大/小彈珠(裝備)、公會記憶碎片(裝備)、開紫箱(裝備)、裝備商人(裝備)、收保護費(裝備)、點愛心(裝備)、每日獎勵(裝備)', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                SizedBox(height: 20),
                Text('多人地下城術語',style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 20,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                Divider(height: 10.0,color: Colors.grey,),
                Text('地下城通用語：\nB/8 = 王、BR/7 = 王房、0 = 死路、1/2/3 指多少個門、20/9 = 打夠 20% 王血，可以拿獎勵、'
                    '3c 或 34 = 紅綠燈、afk = 暫時離開、8T/D/L/R/M = 王在上/下/左/右/中間、OC/SE/R = 增傷/護盾強化/防禦增加 buff，有 I/II/III/V 4 種程度。', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,height: 1.5),),
                Divider(height: 30.0,color: Colors.grey,),
                Text("by douobb 2024/05/21",style: TextStyle(color:  Color.fromRGBO(103, 103, 103, 1),fontSize: 18)),
              ],
            )
        ),
      ),
    );
  }
}