import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Mytheme extends ChangeNotifier{
  ThemeData current = ThemeData.light();
  void init()async{
    var prefs = await SharedPreferences.getInstance();
    current = prefs.getBool('isDark')??false?ThemeData.dark():ThemeData.light();
  }
  getTheme ()async{
    var prefs = await SharedPreferences.getInstance();
    ThemeMode current = prefs.getBool('isDark')??false?ThemeMode.dark:ThemeMode.light;
    return current;
  }
  bool _isDark = false;
  bool getIsDark(){
    return _isDark;
  }
  toggle() async{
    var prefs = await SharedPreferences.getInstance();
    _isDark = prefs.getBool('isDark')??false;
    print('ダークモード判定');
    print(_isDark);
    current = _isDark?ThemeData.dark():ThemeData.light();
    prefs.setBool('isDark',!_isDark);
    notifyListeners();
  }
  getCurrent(){
    return current;
  }
}