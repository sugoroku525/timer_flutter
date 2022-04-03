import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:stop_flutter/pages/question_page.dart';
import 'package:stop_flutter/pages/settings/settings_page.dart';
import 'package:stop_flutter/pages/shutdown_page.dart';
import 'pages/question_page.dart';
import 'pages/shutdown_page.dart';
import 'pages/stop_page.dart';
import 'pages/stop2_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'pages/settings/use_page.dart';
import 'pages/settings/story_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MaterialApp(
    theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue[800],
    ),
    initialRoute:Stop.id,
    routes:{
      Stop.id:(context)=>Stop(),
      Stop2.id:(context)=>Stop2(),
      QuestionPage.id:(context)=>QuestionPage(),
      ShutdownPage.id:(context)=>ShutdownPage(),
      Settings.id:(context)=>Settings(),
      Usepage.id:(context)=>Usepage(),
      Story.id:(context)=>Story(),
    }
  ));
}

