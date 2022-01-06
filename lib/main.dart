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
          const SizedBox(height:16),
          _timeStr(),
          const SizedBox(height:16),
          _panel(),
          

        ]
      ),
      )
      
    );
  }
  Widget _timeStr(){
    return Text(
      timeString(_currentSeconds),
      style:TextStyle(fontSize: 32,color: Colors.black),
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
            if(_timer.isActive){
              _timer.cancel();
            }
          }, icon: Icon(Icons.stop)) ,
          IconButton(onPressed:(){
            if(!_timer.isActive){
              setState(() {
                _timer = countTimer();
              });}},
           icon: Icon(Icons.play_arrow)) ,
           IconButton(onPressed: (){
             setState((){
               _currentSeconds = 30;
             });
           }, icon:Icon(Icons.restart_alt))
  
      ],);
  }
}





  
