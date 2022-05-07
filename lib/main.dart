import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';
import 'pages/settings/inquiry_page.dart';
import 'pages/settings/settings_page.dart';
import 'pages/shutdown_page.dart';
import 'pages/question_page.dart';
import 'pages/stop_page.dart';
import 'pages/stop2_page.dart';
import 'pages/tutorial_page.dart';
import 'pages/settings/use_page.dart';
import 'pages/settings/story_page.dart';
import 'pages/settings/story_page2.dart';
import 'pages/settings/darkmode_page.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(ChangeNotifierProvider(
    create: (context) => Mytheme(),
  
    child: Consumer<Mytheme>(builder: (context,theme,_){
      return MaterialApp(
      theme: theme.current,
      initialRoute: Stop.id,
      routes:{
        Tutorial.id:(context)=>Tutorial(),
        Stop.id:(context)=>Stop(),
        Stop2.id:(context)=>Stop2(),
        QuestionPage.id:(context)=>QuestionPage(),
        ShutdownPage.id:(context)=>ShutdownPage(),
        Settings.id:(context)=>Settings(),
        Usepage.id:(context)=>Usepage(),
        Darkmode.id:(context)=>Darkmode(),
        Story.id:(context)=>Story(),
        Story2.id:(context)=>Story2(),
        Inquiry.id:(context)=>Inquiry(),
      }
    );
    })
    
  ));
}



