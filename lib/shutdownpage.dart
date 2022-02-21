import 'package:flutter/material.dart';

class ShutdownPage extends StatelessWidget {
  static const String id = 'ShutdownPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text('お疲れ様です',style:TextStyle(fontSize: 20.0,color: Colors.blue),),
             SizedBox(height: 30.0,),
             Text('携帯電話の電源を消しましょう',style:TextStyle(fontSize: 20.0,color: Colors.blue),)
            
          ],
        ),
      ),
    );
  }
}