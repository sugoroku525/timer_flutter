import 'package:flutter/material.dart';

class Usepage extends StatelessWidget {

  static const String id = 'Use';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('このアプリの使い方'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('このアプリってどうやって使うの？',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
      
              ],),
              SizedBox(height: 40,),
            Container(
              width:100,
              height: 100,
              child: Image.asset('assets/パズルを解く人.jpg',fit: BoxFit.contain,),
            
              ),
              Container(
                child: Text('このアプリは、「スマホを永遠に見てしまう...スマホをメリハリつけて使えるようにしたい！」 という人向けに作ったアプリです。\n\nこのページでは作者が想定している使い方について説明をします。次の手順に沿ってあなたはスマホをやめることができます。\n\n ①「もうスマホを見るのをやめて、他のことしよう！」と思ったらこのアプリを開きましょう。\n\n ②30秒タイマーをスタートさせましょう。\n\n ③カウントダウンの間、自分の今の心の状態や自分の外に意識を向けましょう。\n\n ④ 意識がスマホ以外に向いたら、スマホの電源を閉じましょう。\n\n ⑤ まだスマホが気になるならもう一度②に戻りましょう。\n\n このステップを行うことでスマホをやめることができることができるかもしれません。 \n\n もちろん、最初はうまくいかないかもしれませんが、だんだんと数をこなしていき、スマホをやめる際のルーティーンとしてくれたら幸いです。\n\n それ以外の使い方として、何かイライラしたときに怒りを鎮める、お菓子を食べそうになった時に食欲を押さえる、などといったときにも使えるかもしれません。'),
              ),
          SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}