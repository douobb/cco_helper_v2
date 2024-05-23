import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ASU extends StatefulWidget {
  const ASU({super.key});
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<ASU> {
  double ts = 0;
  int redBag = 7500000;
  int tsCount = 0;
  double percentOfRedBag = 0;
  late StateSetter _reloadTextSetter;
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerMtp = TextEditingController(text: '0');
    final TextEditingController controllerMtc = TextEditingController(text: '0');
    final TextEditingController controllerAtp = TextEditingController(text: '0');
    final TextEditingController controllerMatp = TextEditingController(text: '0');
    final TextEditingController controllerTs = TextEditingController(text: '0');
    final TextEditingController controllerTsc = TextEditingController(text: '0');
    final TextEditingController controllerBag1 = TextEditingController(text: '0');
    final TextEditingController controllerBag2 = TextEditingController(text: '0');
    final TextEditingController controllerBag3 = TextEditingController(text: '0');
    final TextEditingController controllerBag4 = TextEditingController(text: '0');
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
                  const Text("請輸入各類材料數量",style: TextStyle(color: Color.fromRGBO(192, 191, 14, 1),fontSize: 24,shadows: [Shadow(color: Color.fromRGBO(192, 191, 14, 0.7),blurRadius: 5,offset: Offset(-3,-3))])),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("醫碎        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerMtp,
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
                      const Text("醫碎集群",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerMtc,
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
                  Row(
                    children: [
                      const Text("彈碎        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child:TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerAtp,
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
                      const Text("軍碎        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerMatp,
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
                  Row(
                    children: [
                      const Text("科碎        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerTs,
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
                      const Text("科碎集群",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerTsc,
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
                  Row(
                    children: [
                      const Text("灰包        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerBag1,
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
                      const Text("白包        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerBag2,
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
                  Row(
                    children: [
                      const Text("黃包        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerBag3,
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
                      const Text("紫包        ",style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          cursorColor: const Color.fromRGBO(197, 226, 220, 1),
                          controller: controllerBag4,
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
                      if(controllerMtp.text=='') controllerMtp.text = '0';
                      if(controllerMtc.text=='') controllerMtc.text = '0';
                      if(controllerAtp.text=='') controllerAtp.text = '0';
                      if(controllerMatp.text=='') controllerMatp.text = '0';
                      if(controllerTs.text=='') controllerTs.text = '0';
                      if(controllerTsc.text=='') controllerTsc.text = '0';
                      if(controllerBag1.text=='') controllerBag1.text = '0';
                      if(controllerBag2.text=='') controllerBag2.text = '0';
                      if(controllerBag3.text=='') controllerBag3.text = '0';
                      if(controllerBag4.text=='') controllerBag4.text = '0';
                      ts = int.parse(controllerMtp.text) * 1.2 +
                          int.parse(controllerMtc.text) * 1200 +
                          int.parse(controllerAtp.text) * 1.2 +
                          int.parse(controllerMatp.text) * 1.2 +
                          int.parse(controllerTs.text) +
                          int.parse(controllerTsc.text) * 1000 +
                          int.parse(controllerBag1.text) * 100 +
                          int.parse(controllerBag2.text) * 1000 +
                          int.parse(controllerBag3.text) * 15000 +
                          int.parse(controllerBag4.text) * 300000;
                      if(ts >= redBag) {
                        tsCount = ts.floor() % redBag;
                      } else {
                        tsCount = redBag - ts.floor();
                      }
                      percentOfRedBag = ts * 100 / redBag;
                      _reloadTextSetter((){});
                    },
                    child: const Text("計算", style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
                  ),
                  const SizedBox(height: 30),
                  StatefulBuilder(builder: (BuildContext context, StateSetter stateSetter){
                    _reloadTextSetter = stateSetter;
                    if(percentOfRedBag >= 100){
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
                                    TextSpan(text: '目前進度: 已達標\n可製作 ${ts~/redBag} 個紅包，剩餘:\n', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if(tsCount ~/ 300000 > 0) TextSpan(text: '${tsCount~/300000} 紫包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if((tsCount % 300000) ~/ 15000 > 0) TextSpan(text: '${(tsCount % 300000) ~/ 15000} 黃包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if(((tsCount % 300000) % 15000) ~/ 1000 > 0) TextSpan(text: '${((tsCount % 300000) % 15000) ~/ 1000} 白包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if((((tsCount % 300000) % 15000) % 1000) ~/ 100 > 0) TextSpan(text: '${(((tsCount % 300000) % 15000) % 1000) ~/ 100} 灰包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if((((tsCount % 300000) % 15000) % 1000) % 100 > 0) TextSpan(text: '${(((tsCount % 300000) % 15000) % 1000) % 100} 科碎', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                  ]),
                                ),
                              )
                          )
                        ],
                      );
                    }else{
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
                                    TextSpan(text: '目前進度: ${percentOfRedBag.toStringAsFixed(2)}% \n尚未達標，還需要:\n', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if(tsCount ~/ 300000 > 0) TextSpan(text: '${tsCount ~/ 300000} 紫包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if((tsCount % 300000) ~/ 15000 > 0) TextSpan(text: '${(tsCount % 300000) ~/ 15000} 黃包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if(((tsCount % 300000) % 15000) ~/ 1000 > 0) TextSpan(text: '${((tsCount % 300000) % 15000) ~/ 1000} 白包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if((((tsCount % 300000) % 15000) % 1000) ~/ 100 > 0) TextSpan(text: '${(((tsCount % 300000) % 15000) % 1000) ~/ 100} 灰包  ', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                    if((((tsCount % 300000) % 15000) % 1000) % 100 > 0) TextSpan(text: '${(((tsCount % 300000) % 15000) % 1000) % 100} 科碎', style: const TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18,fontFamily: "GenSenRounded",height: 1.5)),
                                  ]),
                                ),
                              )
                          )
                        ],
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