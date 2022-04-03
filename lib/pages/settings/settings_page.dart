
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:stop_flutter/pages/settings/story_page.dart';
import 'package:stop_flutter/pages/settings/use_page.dart';
import '../../main.dart';
import 'use_page.dart';

class Settings extends StatelessWidget {
  static const String id = 'Settings';
  final BannerAd myBanner = BannerAd(
  adUnitId: 'ca-app-pub-3940256099942544/6300978111',
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
  final Container adContainer = Container(
  alignment: Alignment.center,
  child: adWidget,
  width: myBanner.size.width.toDouble(),
  height: myBanner.size.height.toDouble(),
);
    return Scaffold(
      appBar: AppBar(
        title: Text('設定 '),
      ),
      body:  ListView(
          children: [
            settingList(context, "このアプリの使い方", Icon(Icons.accessibility_new_rounded),Usepage.id),
            settingList(context , "ダークモード", Icon(Icons.dark_mode),Usepage.id),
            // settingList(context, "アプリ内課金の内容説明", Icon(Icons.emoji_people_rounded)),
            // settingList(context,"アプリ内課金のご支払い方法", Icon(Icons.currency_yen)),
            settingList(context, "製作秘話", Icon(Icons.question_mark),Story.id),
            // settingList(context, "製作者支援", Icon(Icons.local_fire_department)),
            // settingList(context, "今後追加したい機能", Icon(Icons.self_improvement)),
            settingList(context, "不具合、要望、感想など", Icon(Icons.sentiment_satisfied_alt),Story.id),
          ]
        ),
      bottomNavigationBar: adContainer
            

      
    );
    
  }
}

  
 Widget settingList(BuildContext context, String title, Icon icon, String page_id) {
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
          Navigator.pushNamed(context, page_id);
        }, 
        onLongPress: () {
          print("onLongPress called.");
        }, // 長押し
      ),
    );
  }
