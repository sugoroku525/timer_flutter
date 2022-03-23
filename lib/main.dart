import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:stop_flutter/nextpage.dart';
import 'package:stop_flutter/settings.dart';
import 'package:stop_flutter/shutdownpage.dart';
import 'nextpage.dart';
import 'shutdownpage.dart';
import 'stop.dart';
import 'stop2.dart';
import 'package:admob_flutter/admob_flutter.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(MaterialApp(
    theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue[800],
    ),
    initialRoute:Stop.id,
    routes:{
      Stop.id:(context)=>Stop(),
      Stop2.id:(context)=>Stop2(),
      NextPage.id:(context)=>NextPage(),
      ShutdownPage.id:(context)=>ShutdownPage(),
      Settings.id:(context)=>Settings()
    }
  ));
}

