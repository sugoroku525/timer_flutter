import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class  Story extends StatelessWidget {

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
      appBar: AppBar(title: Text('制作秘話'),),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('なんでこんなアプリ作ったの？',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
      
              ],),
              SizedBox(height: 40,),
            Container(
              width:100,
              height: 100,
              child: Image.asset('assets/疑問.png',fit: BoxFit.contain,),
            
              ),
              SizedBox(height: 15,),
              Container(
                child: Text('なんでこんなアプリ作ったの？なんでなんで？'),
              ),
          SizedBox(height: 30,)
          ],
        ),
      ),
      bottomNavigationBar: adContainer
    );
}
}
