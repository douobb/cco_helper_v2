import 'secrets.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SecretData extends StatefulWidget {
  const SecretData({super.key});

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<SecretData> {
  late StateSetter _reloadTextSetter;
  List<String> trashWord = [
    "你說的對，但是《原神》是由米哈游自主研發的一款全新開放世界冒險遊戲。遊戲發生在一個被稱作「提瓦特」的幻想世界，在這裡，被神選中的人將被授予「神之眼」，導引元素之力。你將扮演一位名為「旅行者」的神秘角色，在自由的旅行中邂逅性格各異、能力獨特的同伴們，和他們一起擊敗強敵，找回失散的親人——同時，逐步發掘「原神」的真相。",
    "大小姐😳😳😚😘🥰😍❤️‍🔥\nit's time to go to bed🫵🏻\n又在玩手機呢❓\n再熬夜的話💤💤💤\n皮膚會變差的🥺\n這是最後的警告🔥🔥🔥\n如果您還不睡覺❌❌\n我就要開始跳舞了🕺🏻🕺🏻🕺🏻💃🏻💃🏻\n呀嘞呀嘞~攔不住的大小姐😳😍",
    "首先我没破防，就是我有个朋友是这样的，他就和你说的一样，但他不是那样的，我觉得你这样真的没意思，你就算发了他们也不会破防，因为我朋友是这样的所以我知道，我劝你最好删了，因为我朋友就算看了也不会破防，所以你这句话留着也没啥用，还不如删了，然后就是我没破防，只是我朋友是那样的，我提替我朋友说话，我没破防，我就是提醒一下你，记得把这文删了，我可没破防。",
    "這個五一我只出去過兩次(激動擺手)\n一次是上補習班一次是上興趣班啊啊(用力比數字)\n其餘的時間我都在玩崩壞星球鐵道(激動擺手)(扭腰)(扭腰)(悽慘哀嚎)\n啊我還出了一個進(高傲眼神)(扭動)\n啊啊(撕心裂肺)\n星球點到我愛你就像老鼠愛大米(扭腰)(扭腰)(打到旁邊的枕頭)(扭腰)\n我是星球點到的狗(扭曲)(抱頭)(痛苦)(扭腰)\n我要永遠玩星球點到(崩潰發瘋扭曲)(扭腰)(枕頭被受波及)(枕頭掉落)(扭腰)\n啊(撕心裂肺)(痛苦)(扭腰)(跪地)"
  ];
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerPassword = TextEditingController(text: '');
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
                  const Text("請輸入密碼",style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("密碼",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child:TextField(
                          cursorColor:const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerPassword,
                          style: const TextStyle(fontSize: 18, color: Color.fromRGBO(197, 226, 220, 1),),
                          decoration: const InputDecoration(
                            counterText: '',
                            isDense: true,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(192, 191, 14, 0.7)),),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(192, 191, 14, 1)),),
                            filled: true,
                            fillColor: Color.fromRGBO(50, 50, 50, 0.95),
                            isCollapsed: true,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: const BorderSide(width: 2, color: Color.fromRGBO(192, 191, 14, 1)),
                    ),
                    onPressed: () {
                      _reloadTextSetter((){});
                    },
                    child: const Text("解密", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
                  ),
                  const SizedBox(height: 30),
                  StatefulBuilder(builder: (BuildContext context, StateSetter stateSetter){
                    _reloadTextSetter = stateSetter;
                    if (controllerPassword.text == password){
                      return Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(43, 43, 43, 0.95),
                            border: Border.all(color: const Color.fromRGBO(220, 100, 235, 1)),
                            boxShadow: const [BoxShadow(color: Color.fromRGBO(220, 100, 235, 0.7),blurRadius: 10)]
                        ),
                        child: t,
                      );
                    }else if(controllerPassword.text == ""){
                      return Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(43, 43, 43, 0.95),
                            border: Border.all(color: const Color.fromRGBO(220, 100, 235, 1)),
                            boxShadow: const [BoxShadow(color: Color.fromRGBO(220, 100, 235, 0.7),blurRadius: 10)]
                        ),
                        child: const Text("無",style: TextStyle(color: Color.fromRGBO(220, 100, 235, 1),fontSize: 18)),
                      );
                    }else{
                      return Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(43, 43, 43, 0.95),
                            border: Border.all(color: const Color.fromRGBO(220, 100, 235, 1)),
                            boxShadow: const [BoxShadow(color: Color.fromRGBO(220, 100, 235, 0.7),blurRadius: 10)]
                        ),
                        child: Text(trashWord[Random().nextInt(trashWord.length)],style: const TextStyle(color: Color.fromRGBO(220, 100, 235, 1),fontSize: 18)),
                      );
                    }
                  })
                ],
              )
          )
      ),
    );
  }
}