import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Usepage extends StatelessWidget {
  static const String id = 'Use';
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
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('このアプリの使い方'),),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('このアプリってどうやって使うの？',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
      
              ],),
              SizedBox(height: 40,),
            Container(
              width:100,
              height: 100,
              child: Image.asset('assets/パズルを解く人.jpg',fit: BoxFit.contain,),
            
              ),
              Container(
                child: Text('このアプリは、「スマホを永遠に見てしまう...スマホをメリハリつけて使えるようにしたい！」 という人向けに作ったアプリです。\n\nこのページでは作者が想定している使い方について説明をします。次の手順に沿うことで、あなたはスマホをやめることができます!\n\n\n ①「スマホを見るのをやめて、他のことしよう！」と思ったらこのアプリを開きましょう。\n\n\n ②30秒タイマーをスタートさせましょう。\n\n\n ③カウントダウンの間、自分の今の心の状態や自分の外に意識を向けましょう。\n\n\n ④ まだスマホが気になるならもう一度ステップ②に戻りましょう。\n\n\n ⑤ 意識がスマホ以外に向いたら、スマホの電源を閉じましょう。\n\n\n ⑥ 電源を切ったスマホは他の部屋など、自分から遠い所に置いておきましょう \n\n\nこのステップを行うことであなたはいつの間にかスマホをやめていることができています！。 \n\n もちろん、最初はうまくいかないかもしれませんが、だんだんと数をこなしていき、スマホをやめる際のルーティーンとしてくれたら幸いです。\n\n それ以外の使い方として、何かイライラしたときに怒りを鎮める、お菓子を食べそうになった時に食欲を押さえる、などといったときにも使えるかもしれません。'),
              ),
          SizedBox(height: 30,)
          ],
        ),
      ),
      bottomNavigationBar: adContainer
    );
  }
}