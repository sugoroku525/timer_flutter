import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:stop_flutter/pages/stop_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Tutorial extends StatefulWidget {
  static const String id = 'tutorial_page';

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial>  {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: OverBoard(
          allowScroll: true,
          pages: pages,
          showBullets: true,
          inactiveBulletColor: Colors.blue,
          // backgroundProvider: NetworkImage('https://picsum.photos/720/1280'),
          skipCallback: () {
            WidgetsBinding.instance?.addPostFrameCallback((_) async {
              var prefs = await SharedPreferences.getInstance();
              prefs.setBool('isFirstLaunch', false);
            });
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => Stop()), (_) => false);
          },
          finishCallback: () {
            WidgetsBinding.instance?.addPostFrameCallback((_) async {
              var prefs = await SharedPreferences.getInstance();
              prefs.setBool('isFirstLaunch', false);
            });
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => Stop()), (_) => false);
          },
        ));
  }
}

final pages = [
  new PageModel.withChild(
    color: const Color(0xFF9B90BC),
    child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 240,
              height: 380,
              child: Image.asset(
                'assets/疑問.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              'このアプリについて',
              style: TextStyle(fontSize: 35.0, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Text(
                'このアプリは、「スマホをやめたいときにやめる」ことを手助けするアプリです。',
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
            ),
          ],
        )),
  ),
  new PageModel.withChild(
    color: const Color(0xFF0097A7),
    child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 240,
              height: 380,
              child: Image.asset(
                'assets/tutorial.jpg',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              '使い方①',
              style: TextStyle(fontSize: 35.0, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Text(
                'まず、矢印の先の再生ボタンを押しましょう。すると、タイマーが動き始めます。',
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
            ),
          ],
        )),
  ),
  new PageModel.withChild(
    color: const Color(0xFF536DFE),
    child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 240,
              height: 380,
              child: Image.asset(
                'assets/電源消そう.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              '使い方②',
              style: TextStyle(fontSize: 35.0, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Text(
                'プチ瞑想で頭がすっきりしたら、指示に従ってスマホの電源を消しましょう',
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
            ),
          ],
        )),
  ),
  new PageModel.withChild(
    color: const Color(0xFF5886d6),
    child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 240,
              height: 340,
              child: Image.asset(
                'assets/設定どこ.jpg',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '使い方③',
              style: TextStyle(fontSize: 35.0, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Text(
                '使い方はこちらからの設定ボタンからも見ることができます。',
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
            ),
          ],
        )),
  ),
  new PageModel.withChild(
    color: const Color(0xFF5886d6),
    child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: 260,
              height: 360,
              child: Image.asset(
                'assets/バンザイ.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '最後に',
              style: TextStyle(fontSize: 35.0, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22.0),
              child: Text(
                'このアプリを使って、メリハリのあるスマホライフを！',
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
            ),
          ],
        )),
  ),
];
