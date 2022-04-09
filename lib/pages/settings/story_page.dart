import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:stop_flutter/pages/settings/story_page2.dart';
import 'package:stop_flutter/pages/stop2_page.dart';

class Story extends StatelessWidget {
  static const String id = 'Story';
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
        appBar: AppBar(
          title: Text('制作秘話'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('なんでこんなアプリ作ったの？',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 110,
                height: 110,
                child: Image.asset(
                  'assets/疑問.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'youtubeあと1個見たら動こう、、、',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                    '私たちがスマホをやめて別の行動をしようとするとき、このようなことを考えると思います。\n\n もちろんyoutubeだけでなく、「漫画をあと一話見たら動こう」、「なにかあと一つ記事を見たら動こう」、「あと5分スマホ見たら動こう」...など人によって様々だと思います。\n\n さて、ここで自身の行動を振り返ってみましょう。あなたが考えた「あと一つ」は本当に一つだったでしょうか？ 「5分」は本当に5分だったでしょうか？ \n\n 多くの人は、「あと一つ」「あと5分」と言いつつ無限にコンテンツを消費し、気づいたら多くの時間が経っていたのではないかと思います。(もしあなたがきっぱりとスマホをやめることができるのなら、このアプリは使う必要ありません。) \n\n これは僕自身何度も経験していることで、「この無駄な時間が無かったら他の有意義なことに時間を使えるのになぁ」とよく考えています。\n\n 勉強や仕事、家事などのやる気を上げる方法として、「実際に作業すればやる気上がるよ！」という事がよく言われますが、「スマホをやめて実際に作業するまでが大変なんだよ！！」と反抗したくなります。 \n\n そこで、すっぱりとスマホをやめるために作ったのがこのアプリです。\n\n '),
              ),
              Container(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  child: Text(
                    '制作秘話②へ',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => Story2()),(_)=>false);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        bottomNavigationBar: adContainer);
  }
}
