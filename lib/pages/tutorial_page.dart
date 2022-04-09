import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:stop_flutter/pages/stop_page.dart';

class Tutorial extends StatefulWidget {
  static const String id = 'tutorial_page';

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        body: OverBoard(
          allowScroll: true,
          pages: pages,
          showBullets: true,
          inactiveBulletColor: Colors.blue,
          // backgroundProvider: NetworkImage('https://picsum.photos/720/1280'),
          skipCallback: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => Stop()),(_)=>false);
          },
          finishCallback: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => Stop()),(_)=>false);
          },
        ));
  }
}

final pages = [
  new PageModel(
      color: const Color(0xFF0097A7),
      imageAssetPath: 'assets/疑問.png',
      title: 'Screen 1',
      body: 'Share your ideas with the team',
      doAnimateImage: true),
  new PageModel(
      color: const Color(0xFF536DFE),
      imageAssetPath: 'assets/疑問.png',
      title: 'Screen 2',
      body: 'See the increase in productivity & output',
      doAnimateImage: true),
  new PageModel(
      color: const Color(0xFF9B90BC),
      imageAssetPath: 'assets/疑問.png',
      title: 'Screen 3',
      body: 'Connect with the people from different places',
      doAnimateImage: true),
];
