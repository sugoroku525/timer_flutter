import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:stop_flutter/main.dart';
import 'package:stop_flutter/shutdownpage.dart';

class NextPage extends StatelessWidget {
  var number = math.Random().nextInt(2);

  static const String id ='next_page';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[ 
        Center(child: ((){switch(number){
          case 0:
            return Text('心は落ち着きましたか？',style: TextStyle(color: Colors.blue));
          case 1:
            return Text('リフレッシュできましたか？',style: TextStyle(color: Colors.blue),);
        }
      })()
    ),
    SizedBox(height:50),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            SizedBox(
              width:120,
    
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){
                  Navigator.pushNamed(context, ShutdownPage.id);
              }, 
              child: Text('はい',style:TextStyle(color: Colors.white,fontSize: 30),
              )
              ,),
            ),
          ],
        ),
        SizedBox(width:30),
        SizedBox(
          width:120,
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed:(){
              Navigator.pushNamed(context, Stop.id);
            } ,
          child: Text('いいえ',style:TextStyle(color: Colors.white,fontSize: 30),),),
        )
      ],
    )
        
      ]);
  }
}