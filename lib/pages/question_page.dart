import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'stop2_page.dart';
import 'package:stop_flutter/pages/shutdown_page.dart';



class QuestionPage extends StatelessWidget {
  var number = math.Random().nextInt(2);

  static const String id ='question_page';
  @override
  Widget build(BuildContext context) {

    
    return  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[ 
            Center(child: ((){switch(number){
              case 0:
                return Text('心は落ち着きましたか？',style: TextStyle(color: Colors.blue,fontSize: 23.0));
              case 1:
                return Text('リフレッシュできましたか？',style: TextStyle(color: Colors.blue,fontSize: 23.0),);
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
                  child: Text('はい',style:TextStyle(color: Colors.white,fontSize: 15),
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
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Stop2()),(_)=>false);
                } ,
              child: Text('いいえ',style:TextStyle(color: Colors.white,fontSize: 15),),),
            )
          ],
        )
            
          ]),
      
    );
  }
}