import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stop_flutter/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Darkmode extends StatefulWidget {
  static const String id = 'Darkmode';

  @override
  State<Darkmode> createState() => _DarkmodeState();
}

class _DarkmodeState extends State<Darkmode> {

  void _changeSwitch(bool e) async {
    setState(() {
      Provider.of<Mytheme>(context, listen: false).toggle();
    });
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Mytheme(),
      child: Scaffold(
        appBar: AppBar(title: Text('ダークモード')),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              SizedBox(
                width: 50,
              ),
              Text('切り替えボタン'),
              SizedBox(
                width: 50,
              ),
              Switch(
                value: Provider.of<Mytheme>(context, listen: false).getIsDark(),
                onChanged: _changeSwitch,
                activeColor: Colors.black,
                inactiveThumbColor: Colors.white,
              )
            ]),
            Container(
              width: 140,
              height: 140,
              child: Image.asset(
                'assets/ジャジャーン.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Text('通常モードはかっこいいですが、ダークモードにするとクールになります。'),
            )
          ]),
        ),
      ),
    );
  }
}
