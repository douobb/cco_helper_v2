import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatelessWidget {
  Link({super.key});
  final List<Widget> list = <Widget>[
    ListTile(
      title: const Text('CCO Found 試算表', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
      subtitle: const Text('使用前請先複製一分到自己雲端', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 16),),
      leading: const Icon(Icons.build, color: Color.fromRGBO(103, 103, 103, 1),),
      trailing: InkWell(
        child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(197, 226, 220, 1)),
        onTap: (){launchUrl(Uri.parse('https://docs.google.com/spreadsheets/d/1wJLuZhZg_Xs1ouyjh6chntY8p3lcgNTuRU3-9JwKxQ4/edit#gid=632254106'),mode: LaunchMode.externalApplication);},
      ),
    ),
    ListTile(
      title: const Text('公會裝備租借', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
      leading: const Icon(Icons.build, color: Color.fromRGBO(103, 103, 103, 1),),
      trailing: InkWell(
        child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(197, 226, 220, 1)),
        onTap: (){launchUrl(Uri.parse('https://docs.google.com/spreadsheets/d/1axZMewZiYB2uZ5nv1qirKOoMzaI6-4CltLeY33OcjwM/edit?usp=sharing'), mode:LaunchMode.externalApplication);},
      ),
    ),
    ListTile(
      title: const Text('CCO教學-新手入門', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
      leading: const Icon(Icons.book, color: Color.fromRGBO(103, 103, 103, 1),),
      trailing: InkWell(
        child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(197, 226, 220, 1)),
        onTap: (){launchUrl(Uri.parse('https://douobb.github.io/2024/04/27/CCO%E6%95%99%E5%AD%B8-%E6%96%B0%E6%89%8B%E5%85%A5%E9%96%80/'), mode:LaunchMode.externalApplication);},
      ),
    ),
    ListTile(
      title: const Text('巴哈新手常問問題', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
      leading: const Icon(Icons.book, color: Color.fromRGBO(103, 103, 103, 1),),
      trailing: InkWell(
        child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(197, 226, 220, 1)),
        onTap: (){launchUrl(Uri.parse('https://forum.gamer.com.tw/C.php?bsn=73182&snA=6'),mode: LaunchMode.externalApplication);},
      ),
    ),
    ListTile(
      title: const Text('SL DATA 數據中心', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
      leading: const Icon(Icons.book, color: Color.fromRGBO(103, 103, 103, 1),),
      trailing: InkWell(
        child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(197, 226, 220, 1)),
        onTap: (){launchUrl(Uri.parse('https://hackmd.io/@temmie950807/SL_DATA'),mode: LaunchMode.externalApplication);},
      ),
    ),
    ListTile(
      title: const Text('官方 Discord', style: TextStyle(color: Color.fromRGBO(197, 226, 220, 1),fontSize: 18),),
      leading: const Icon(Icons.group, color: Color.fromRGBO(103, 103, 103, 1),),
      trailing: InkWell(
        child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(197, 226, 220, 1)),
        onTap: (){launchUrl(Uri.parse('https://discord.gg/JREx8xz'),mode: LaunchMode.externalApplication);},
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(
                    color: Color.fromRGBO(30, 30, 30, 1),
                    width: 3
                ),
                left: BorderSide(
                    color: Color.fromRGBO(30, 30, 30, 1),
                    width: 3
                )
            )
        ),
        width: 800,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: list,
          ),
        )
    );
  }
}