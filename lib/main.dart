import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home:Stop(),
  ));
}

class Stop extends StatefulWidget{
  @override 
  _StopState createState()=>_StopState();
}
class _StopState extends State<Stop> {
  var _timer;
  var _time;
  @override

  void initState(){
   _time = DateTime.utc(0,0,0);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Text(
            DateFormat.Hms().format(_time),
              style: Theme.of(context).textTheme.headline2,
              ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(onPressed:(){
                if(_timer !=null && _timer.isActive)_timer.cancel();
              } ,
              child:Text("Stop"),),
              FloatingActionButton(onPressed: (){
                _timer  = Timer.periodic(Duration(seconds:1),
                (Timer timer){
                  setState((){
                    _time = _time.add(Duration(seconds:1));
                  });
                }
                );
              }
              ,child:Text("Start"),
              )
          ],)

        ]
      ),
    );
  }
}




  
