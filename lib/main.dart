import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:stop_flutter/pages/question_page.dart';
import 'package:stop_flutter/pages/settings/inquiry_page.dart';
import 'package:stop_flutter/pages/settings/settings_page.dart';
import 'package:stop_flutter/pages/shutdown_page.dart';
import 'pages/question_page.dart';
import 'pages/shutdown_page.dart';
import 'pages/stop_page.dart';
import 'pages/stop2_page.dart';
import 'pages/tutorial_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'pages/settings/use_page.dart';
import 'pages/settings/story_page.dart';
import 'pages/settings/story_page2.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MaterialApp(
    theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue[800],
    ),
    initialRoute:Tutorial.id,
    routes:{
      Tutorial.id:(context)=>Tutorial(),
      Stop.id:(context)=>Stop(),
      Stop2.id:(context)=>Stop2(),
      QuestionPage.id:(context)=>QuestionPage(),
      ShutdownPage.id:(context)=>ShutdownPage(),
      Settings.id:(context)=>Settings(),
      Usepage.id:(context)=>Usepage(),
      Story.id:(context)=>Story(),
      Story2.id:(context)=>Story2(),
      Inquiry.id:(context)=>Inquiry(),
    }
  ));
}

    final pages = [
        new PageModel(
            color: const Color(0xFF0097A7),
            imageAssetPath: 'assets/疑問.png',
            title: 'Screen 1',
            body: 'Share your ideas with the team',
            doAnimateImage: true),
        new PageModel(
            color: const Color(0xFF536DFE),
            imageAssetPath: 'assets/疑問.png',
            title: 'Screen 2',
            body: 'See the increase in productivity & output',
            doAnimateImage: true),
        new PageModel(
            color: const Color(0xFF9B90BC),
            imageAssetPath: 'assets/疑問.png',
            title: 'Screen 3',
            body: 'Connect with the people from different places',
            doAnimateImage: true),
    ];

