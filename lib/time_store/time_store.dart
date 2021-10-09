import 'package:flutter/material.dart';
import 'dart:async';
import '../main.dart';


class TimeStore with ChangeNotifier{
  static const COUNTER_VALUE = 60;
  var count=0;
  static const sec = const Duration(seconds:1);
  static const ms = const Duration(milliseconds:1);
  Timer 

  startTimer(){
    if(Timer !=null){
      Timer.cancel();
    }
  }
}
