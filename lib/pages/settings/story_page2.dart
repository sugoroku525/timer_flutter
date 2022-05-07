import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:stop_flutter/pages/settings/settings_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Story2 extends StatelessWidget {
  static const String id = 'Story2';
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => Settings()),(_)=>false);},
          ),
          title: Text('制作秘話②'),
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
                  Text('このアプリの理屈',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 120,
                height: 120,
                child: Image.asset(
                  'assets/考えすぎた人.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'このアプリでは何をやらせたいの？',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Text(
                    '(制作秘話①の続きです)\n\n 多くの人(自分)は、スマホをやめる際に「あと一つ、あと5分」と意味のない呪文を唱えていると思います。これは、私たちはスマホをやめるきっかけを欲しがっているからではないでしょうか。\n\n そして、そのスマホをやめるきっかけとしてyoutubeやSNS、漫画やゲームなどの中毒性のあるコンテンツを用いているために、スマホを延々と続けてしまうのではないかと思います。'),
              ),
              SizedBox(height: 18.0),
              Container(
                child: Text(
                  'そこで、私は考えました。',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Container(
                child: Text(
                    'スマホをやめるきっかけとなる行動の中で、スマホの電源を切ってしまえば、スマホをすっぱりとやめることができるのではないか！ \n\n しかし、ただスマホの電源を切るようアプリで誘導したとしても、その通り指示に従う人は少ないのではないでしょうか。\n\n その対策として、30秒間瞑想っぽいことをするクールタイムを設けることを考えました。\n\n これにより、少しすっきりした頭でスマホの電源を切り、無事に他の行動を起こせるようになる、というのが私のガバガバ理論です。 \n\n 長々と読んでいただきありがとうございました。このアプリを使うことで、メリハリを持ったスマホライフを送れるようになれば幸いです。 \n\n ご意見・ご要望・ご感想がある方は、下のフォームに回答していただけるとありがたいです。'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  child: Text(
                    'お問い合わせフォーム',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    const url =
                        'https://docs.google.com/forms/d/e/1FAIpQLSd8twmrbqweUz39JUCmTfI6EYrm376GP828yvonKFqQAppmTA/viewform?usp=sf_link';
                    if (await canLaunch(url)) {
                      print('urlを開くことができます。');
                      launch(
                        url,
                        forceSafariVC: false,
                        forceWebView: false,
                      );
                    } else {
                      print("can't launch url");
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
        bottomNavigationBar: adContainer);
  }
}
