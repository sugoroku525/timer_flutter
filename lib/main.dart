import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

void main() {
  runApp(Stop());
}

class Stop extends StatefulWidget{
  @override 
  _StopState createState()=>_StopState();
}
class _StopState extends State<Stop> {
  String _time='';
  var _timer;
  @override

  void initState(){
   _timer = Timer.periodic(Duration(seconds:1),_onTimer,);
    super.initState();
  }
  void dispose(){
    _timer.cancel();
    super.dispose();
  }
  void _onTimer(Timer timer){
    var now=DateTime.now();
    var formatter = DateFormat('HH:mm:ss');
    var formattedTime = formatter.format(now);
    setState(()=>_time = formattedTime);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _time,
        style: TextStyle(
          fontSize: 60.0,
          
        )
      ),
    );
  }
}




  
