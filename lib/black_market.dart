import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BlackMarket extends StatefulWidget {
  const BlackMarket({super.key});
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<BlackMarket> {
  List rate = [0.7, 0.8, 1, 1.2];
  List soldPrice = [0, 0, 0, 0];
  List cost = [0, 0, 0, 0];
  List gainBTC = [0, 0, 0, 0];
  List gainAI = [0, 0, 0, 0];
  List gainExp = [0, 0, 0, 0];
  List getBackLevel = [0, 0, 0, 0];
  late StateSetter _reloadTextSetter;
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerPrintLevel = TextEditingController(text: '1');
    final TextEditingController controllerAmount = TextEditingController(text: '1000');
    final TextEditingController controllerBTCBuff = TextEditingController(text: '100');
    final TextEditingController controllerBargain = TextEditingController(text: '40');
    final TextEditingController controllerExpBuff = TextEditingController(text: '80');
    final TextEditingController controllerAIPrice = TextEditingController(text: '4400');
    final TextEditingController controllerCacheGrey = TextEditingController(text: '8');
    final TextEditingController controllerCacheWhite = TextEditingController(text: '7');
    final TextEditingController controllerCacheGreen = TextEditingController(text: '4');
    final TextEditingController controllerCacheYellow = TextEditingController(text: '1.8');
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              right: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3),
              left: BorderSide(color: Color.fromRGBO(30, 30, 30, 1), width: 3)
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
                      const Text("BTC(%)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerBTCBuff,
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
                      const Text("討價(%)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerBargain,
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
                      const Text("經驗(%)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child:TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerExpBuff,
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text("分子列印等級",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerPrintLevel,
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
                      const Text("快取數量",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerAmount,
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
                  const SizedBox(height: 10),
                  const Text("請輸入快取價格 (快取：AI)",style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("灰(廢棄)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child:TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerCacheGrey,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9.]"))],
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
                      const Text("白(普通)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerCacheWhite,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9.]"))],
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
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("綠(高級)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerCacheGreen,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9.]"))],
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
                      const Text("黃(稀有)",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerCacheYellow,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9.]"))],
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
                      if(controllerPrintLevel.text=='') controllerPrintLevel.text = '1';
                      if(controllerAmount.text=='') controllerAmount.text = '1000';
                      if(controllerBTCBuff.text=='') controllerBTCBuff.text = '100';
                      if(controllerBargain.text=='') controllerBargain.text = '40';
                      if(controllerExpBuff.text=='') controllerExpBuff.text = '80';
                      if(controllerAIPrice.text=='') controllerAIPrice.text = '4400';
                      if(controllerCacheGrey.text=='') controllerCacheGrey.text = '8';
                      if(controllerCacheWhite.text=='') controllerCacheWhite.text = '7';
                      if(controllerCacheGreen.text=='') controllerCacheGreen.text = '4';
                      if(controllerCacheYellow.text=='') controllerCacheYellow.text = '1.8';
                      List cachePrice = [double.parse(controllerCacheGrey.text), double.parse(controllerCacheWhite.text), double.parse(controllerCacheGreen.text), double.parse(controllerCacheYellow.text)];
                      for(int i = 0; i < 4; i++){
                        soldPrice[i] = ((((int.parse(controllerPrintLevel.text) + 100) * rate[i]).ceil() * (1 + int.parse(controllerBTCBuff.text) / 100)).ceil() * (1 + int.parse(controllerBargain.text) / 100)).ceil() * int.parse(controllerAmount.text);
                        cost[i] = double.parse((int.parse(controllerAmount.text) / cachePrice[i]).toStringAsFixed(2));
                        gainBTC[i] = double.parse((soldPrice[i] - cost[i] * int.parse(controllerAIPrice.text)).toStringAsFixed(2));
                        gainAI[i] = double.parse((gainBTC[i] / int.parse(controllerAIPrice.text)).toStringAsFixed(2));
                        gainExp[i] = ((pow(int.parse(controllerPrintLevel.text), 2) + 24) * (1 + int.parse(controllerExpBuff.text) / 100)).ceil() * int.parse(controllerAmount.text);
                        for(int j = 1; j < 801; j++){
                          if(((j + 100) * rate[i]) * (1 + int.parse(controllerBTCBuff.text) / 100) * (1 + int.parse(controllerBargain.text) / 100) >= (int.parse(controllerAIPrice.text) / cachePrice[i])){
                            getBackLevel[i] = j;
                            break;
                          }
                        }
                      }
                      _reloadTextSetter((){});
                    },
                    child: const Text("計算", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
                  ),
                  const SizedBox(height: 30),
                  StatefulBuilder(builder: (BuildContext context, StateSetter stateSetter){
                    _reloadTextSetter = stateSetter;
                    return Row(
                      children: [
                        Expanded(
                            child: Table(
                              border: TableBorder.all(color: const Color.fromRGBO(197, 226, 220, 1), width: 2.0, style: BorderStyle.solid),
                              children: <TableRow>[
                                TableRow(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('快取類別',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('灰 (廢棄)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('白 (普通)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('綠 (高級)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('黃 (稀有)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('售價(BTC)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${soldPrice[0]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${soldPrice[1]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${soldPrice[2]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${soldPrice[3]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('成本(AI)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${cost[0]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${cost[1]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${cost[2]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${cost[3]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('獲利(BTC)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainBTC[0]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainBTC[1]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainBTC[2]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainBTC[3]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('獲利(AI)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainAI[0]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainAI[1]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainAI[2]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainAI[3]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('獲利(EXP)',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainExp[0]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainExp[1]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainExp[2]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${gainExp[3]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: const Text('回本等級',style: TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${getBackLevel[0]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${getBackLevel[1]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${getBackLevel[2]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                      child: Text('${getBackLevel[3]}',style: const TextStyle(fontSize: 16,color: Color.fromRGBO(197, 226, 220, 1),fontFamily: "GenSenRounded")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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