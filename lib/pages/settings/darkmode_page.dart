import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stop_flutter/theme.dart';

class Darkmode extends StatefulWidget {
  static const String id = 'Darkmode';

  @override
  State<Darkmode> createState() => _DarkmodeState();
}

class _DarkmodeState extends State<Darkmode> {
  @override
  bool _active = true;
  void _changeSwitch(bool e) { 
    setState(() {
       _active = e;
       Provider.of<Mytheme>(context,listen: false).toggle();
       });}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ダークモード')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(width: 50,),
            Text('切り替えボタン'),
            SizedBox(width: 50,),
           
            Switch(
              value: _active,
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
    );
  }
}
