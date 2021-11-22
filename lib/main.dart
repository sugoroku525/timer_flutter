import 'dart:html';
import 'dart:js';
import 'nextpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'やめる',
      theme:ThemeData(
        fontFamily: 'Honoka-Shin-Maru-Gothic_R'
      ),
      home:Stopscreen(),
      initialRoute: Stopscreen.id,
      routes:{
          NextPage.id:(context)=> NextPage(),
      }
    );
  }
}



class Stopscreen extends StatelessWidget {
 
  static const String id = 'stop_screen';
  bool time = false;
  void onTimer(){
    time = true;
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('やめる'),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
            Text('タイマーを押して深呼吸しよう',style: TextStyle(fontSize: 30.0,color: Colors.blue,fontFamily:'Honoka-Shin-Maru-Gothic_R'),),
             

            Row(
      
              mainAxisAlignment:MainAxisAlignment.center,
              children:<Widget> [
                
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black
                    ),
                    onPressed: (){
                      Timer(Duration(minutes:1),onTimer
                        
                      );
                      Navigator.pushNamed(context, NextPage.id);
                    },
                    child: Icon(Icons.play_arrow_outlined,size: 60.0,color: Colors.blue,
                    ),
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black
                    ),
                    onPressed: (){},
                    child: Icon(Icons.refresh,size: 60.0,color: Colors.blue,)),
                )
              ],
            )
          ]

        ),)
    );
  }
}

