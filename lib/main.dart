import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:stop_flutter/nextpage.dart';
import 'package:stop_flutter/shutdownpage.dart';
import 'nextpage.dart';
import 'shutdownpage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute:Stop.id,
    routes:{
      Stop.id:(context)=>Stop(),
      NextPage.id:(context)=>NextPage(),
      ShutdownPage.id:(context)=>ShutdownPage()
    }
  ));
}

class Stop extends StatefulWidget{
  static const String id = 'Stop';
  @override 
  _StopState createState()=>_StopState();
}

class _StopState extends State<Stop> {
  var _timer;
  var _currentSeconds;
  @override

  void dispose(){
    super.dispose();
    _timer.cancer();
  }


  @override
  void initState(){
    super.initState();
    final workMinuts = 0;
    _currentSeconds = workMinuts * 60+30;
    _timer = countTimer();
  }

  Timer countTimer(){
    return Timer.periodic(
      const Duration(seconds:1),
      (Timer timer){
        if(_currentSeconds<1){
          timer.cancel();
          Navigator.pushNamed(context, NextPage.id);
        }
        else{
          setState((){
            _currentSeconds = _currentSeconds -1;
          });
        }
      }
    );
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          SizedBox(height:140.0),

         
            Text('もう一度',style: TextStyle(fontSize:26.0,color: Colors.blue ),),
         Text('ゆっくりと呼吸をしよう',style:TextStyle(fontSize: 26.0,color: Colors.blue)),
           SizedBox(height:80.0),
          const SizedBox(height:16),
          _timeStr(),
    
          const SizedBox(height:16),
          _panel(),
          SizedBox(height:50.0),
          Text('自分の内面か周囲に意識を向けよう',style:TextStyle(fontSize: 23.0,color: Colors.red)),

        ]
      ),
      )
      
    );
  }
  Widget _timeStr(){
    return Text(
      timeString(_currentSeconds),
      style:TextStyle(fontSize: 70,color: Colors.black),
    );
  }
  String timeString(int leftSeconds){
    final minutes = (leftSeconds /60).floor().toString().padLeft(2,'0');
    final seconds = (leftSeconds %60).floor().toString().padLeft(2,'0');
    return '$minutes:$seconds';
  }
  Widget _panel(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(onPressed: (){
          setState(() {
            if(_timer.isActive){
            _timer.cancel();
          }
          else{
            _timer = countTimer();
          }
          });
          
        }, 
          iconSize: 40.0,
          icon: _timer.isActive? Icon(Icons.pause):Icon(Icons.play_arrow)),
        IconButton(onPressed: (){
          setState((){
              _currentSeconds = 30;
            });
          }, 
          iconSize: 40.0,
          icon:Icon(Icons.restart_alt))
  
      ],);
  }


}
