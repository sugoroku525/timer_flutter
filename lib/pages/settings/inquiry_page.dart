import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Inquiry extends StatelessWidget {
  static const String id = 'Inquiry';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('お問い合わせ'),
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
                Text('このアプリを使ってくれた方へ',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 140,
              height: 140,
              child: Image.asset(
                'assets/ゾンビだ逃げろ.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                  'この上のアイコンは、「ヒューマンピクトグラム2.0」というサイトにて無料で提供されている、「ゾンビだぁー　 逃げろ！」というものです。 \n\n なぜこれがここにあるかというと、「作者が気に入ったから」です。\n\n このアプリには他にも、作者が思い付きで実装したものが多々あります。\n\n そのため、使っている中で「これなに？」や「ここ使いにくい！」ということを思うかもしれません。\n\n そのような声を下のお問い合わせフォームにいただけると幸いです。'),
            ),
            SizedBox(
              height: 15.0,
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
            ),
            Container(child: Text('応援や高評価はとても励みになります。我こそは！という方はお願いいたします。'),),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
