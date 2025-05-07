import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPlace extends StatefulWidget {
  const SearchPlace({super.key});

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<SearchPlace> {
  int redBag = 7500000;
  int tsCount = 0;
  double percentOfRedBag = 0;
  int bestArea = 0;
  late StateSetter _reloadTextSetter;
   List data = [
    [1   , 6   * 0.7888 , 1  * 0.3316 , 1  * 0.2415],
    [7   , 8   * 0.5947 , 1  * 0.3745 , 1  * 0.2346],
    [11  , 9   * 0.6563 , 2  * 0.4324 , 2  * 0.2491],
    [14  , 11  * 0.7798 , 2  * 0.4350 , 2  * 0.2231],
    [31  , 15  * 0.6780 , 4  * 0.2189 , 4  * 0.2133],
    [34  , 15  * 0.7834 , 4  * 0.2234 , 4  * 0.2418],
    [37  , 16  * 0.7643 , 4  * 0.3484 , 4  * 0.2362],
    [41  , 18  * 0.7192 , 4  * 0.4095 , 4  * 0.2318],
    [51  , 21  * 0.5894 , 5  * 0.2193 , 6  * 0.2401],
    [57  , 20  * 0.6474 , 6  * 0.2994 , 6  * 0.2286],
    [61  , 24  * 0.5986 , 6  * 0.4225 , 6  * 0.2392],
    [64  , 23  * 0.7225 , 7  * 0.4836 , 6  * 0.2112],
    [67  , 26  * 0.7706 , 6  * 0.4128 , 6  * 0.2283],
    [77  , 29  * 0.6495 , 8  * 0.4051 , 8  * 0.2215],
    [84  , 30  * 0.7282 , 8  * 0.2977 , 8  * 0.2399],
    [91  , 32  * 0.7469 , 8  * 0.2559 , 9  * 0.2457],
    [97  , 31  * 0.7448 , 10 * 0.3002 , 10 * 0.2368],
    [107 , 38  * 0.6485 , 10 * 0.2105 , 10 * 0.2375],
    [114 , 40  * 0.7663 , 12 * 0.2650 , 11 * 0.2227],
    [127 , 44  * 0.6571 , 13 * 0.3708 , 11 * 0.2129],
    [131 , 41  * 0.7690 , 13 * 0.4950 , 11 * 0.2424],
    [154 , 53  * 0.7928 , 14 * 0.2069 , 16 * 0.2348],
    [177 , 58  * 0.7135 , 17 * 0.4553 , 17 * 0.2209],
    [187 , 59  * 0.7579 , 19 * 0.3228 , 16 * 0.2136],
    [201 , 61  * 0.7955 , 20 * 0.2982 , 19 * 0.2238],
    [221 , 69  * 0.7891 , 23 * 0.4154 , 22 * 0.2481],
    [237 , 74  * 0.7973 , 24 * 0.2658 , 21 * 0.2372],
    [271 , 87  * 0.7127 , 26 * 0.2322 , 26 * 0.2106],
    [274 , 77  * 0.7194 , 24 * 0.4603 , 25 * 0.2403],
    [277 , 83  * 0.7035 , 28 * 0.3729 , 25 * 0.2260],
    [297 , 92  * 0.7129 , 26 * 0.2809 , 27 * 0.2182],
    [314 , 91  * 0.7254 , 32 * 0.4026 , 28 * 0.2134],
    [341 , 108 * 0.6369 , 30 * 0.4283 , 33 * 0.2136],
    [361 , 110 * 0.7030 , 31 * 0.4399 , 35 * 0.2273],
    [394 , 123 * 0.7951 , 38 * 0.4386 , 39 * 0.2372],
    [474 , 140 * 0.7845 , 46 * 0.4244 , 45 * 0.2306],
    [514 , 155 * 0.7388 , 45 * 0.4573 , 51 * 0.2266],
    [547 , 163 * 0.7553 , 51 * 0.3297 , 46 * 0.2464],
    [554 , 165 * 0.7597 , 48 * 0.4947 , 47 * 0.2386],
    [567 , 175 * 0.7189 , 48 * 0.4953 , 56 * 0.2247],
    [574 , 170 * 0.7941 , 53 * 0.4743 , 50 * 0.2141],
    [674 , 178 * 0.7957 , 59 * 0.4194 , 52 * 0.2220],
    [801 ,0 ,0 ,0]
  ];
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerTimes = TextEditingController(text: '10');
    final TextEditingController controllerLevel = TextEditingController(text: '1');
    final TextEditingController controllerValueOfMtp = TextEditingController(text: '60');
    final TextEditingController controllerValueOfAtp = TextEditingController(text: '135');
    final TextEditingController controllerValueOfMatp = TextEditingController(text: '130');
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
                  const Text("請輸入各項數值",style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("搜索等級 (1~800)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child:TextField(
                          cursorColor:const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerLevel,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
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
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("搜索次數 (1~12)  ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child:TextField(
                          cursorColor:const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerTimes,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
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
                  const Text("請輸入各類物品價值(AI/k)",style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("醫碎",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerValueOfMtp,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(197, 226, 220, 1),
                          ),
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
                      const SizedBox(width: 20),
                      const Text("彈碎",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerValueOfAtp,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
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
                      const SizedBox(width: 20),
                      const Text("軍碎",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child:TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerValueOfMatp,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
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
                      )
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
                      if(controllerTimes.text=='') controllerTimes.text = '10';
                      if(controllerLevel.text=='') controllerLevel.text = '1';
                      if(controllerValueOfMtp.text=='') controllerValueOfMtp.text = '60';
                      if(controllerValueOfAtp.text=='') controllerValueOfAtp.text = '135';
                      if(controllerValueOfMatp.text=='') controllerValueOfMatp.text = '130';
                      double ts = 0;
                      tsCount = redBag - ts.floor();
                      percentOfRedBag = ts * 100 / redBag;
                      for(int i = 0; i < 42; i++){
                        if(int.parse(controllerLevel.text) < data[i+1][0]){
                          bestArea = i;
                          break;
                        }
                      }
                      _reloadTextSetter((){});
                    },
                    child: const Text("查詢", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
                  ),
                  const SizedBox(height: 30),
                  StatefulBuilder(builder: (BuildContext context, StateSetter stateSetter){
                    _reloadTextSetter = stateSetter;
                    return Row(
                      children: [
                        Expanded(
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 30, 10),
                              margin: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(43, 43, 43, 0.95),
                                  border: Border.all(color: const Color.fromRGBO(192, 191, 14, 1)),
                                  boxShadow: const [BoxShadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 10)]
                              ),
                              child:RichText(
                                text: TextSpan(children: [
                                  TextSpan(text: '目前最佳搜索地區: ${data[bestArea][0]}\n', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                  TextSpan(text: '期望值: ${(data[bestArea][1] * int.parse(controllerTimes.text)).round()} 醫碎 ${(data[bestArea][2] * int.parse(controllerTimes.text)).round()} 彈碎 ${(data[bestArea][3] * int.parse(controllerTimes.text)).round()} 軍碎\n', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                  TextSpan(text: '總價值: ${((data[bestArea][1] * int.parse(controllerTimes.text) * int.parse(controllerValueOfMtp.text) + data[bestArea][2] * int.parse(controllerTimes.text) * int.parse(controllerValueOfAtp.text) + data[bestArea][3] * int.parse(controllerTimes.text) * int.parse(controllerValueOfMatp.text)) / 1000).toStringAsFixed(1)} AI', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                ]),
                              ),
                            )
                        )
                      ],
                    );
                  })
                ],
              )
          )
      ),
    );
  }
}