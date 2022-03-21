import 'package:flutter/material.dart';


class Settings extends StatelessWidget {
  static const String id = 'Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定 '),
      ),
      body:  ListView(
          children: [
            _menuItem("ダークモード", Icon(Icons.dark_mode)),
            _menuItem("アプリ内課金の内容説明", Icon(Icons.emoji_people_rounded)),
            _menuItem("アプリ内課金のご支払い方法", Icon(Icons.currency_yen)),
            _menuItem("製作者について", Icon(Icons.question_mark)),
            _menuItem("製作者支援", Icon(Icons.local_fire_department)),
            _menuItem("今後追加したい機能", Icon(Icons.self_improvement)),
            _menuItem("不具合、要望、感想など", Icon(Icons.sentiment_satisfied_alt)),
          ]
        ),
      
    );
    
  }
}

 Widget _menuItem(String title, Icon icon) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
      ),
      child:ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
            color:Colors.black,
            fontSize: 18.0
          ),
        ),
        onTap: () {
          print("onTap called.");
        }, // タップ
        onLongPress: () {
          print("onLongPress called.");
        }, // 長押し
      ),
    );
  }