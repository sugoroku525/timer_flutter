import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../time_store/time_store.dart';
void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'clock',
      theme:ThemeData.dark(),
      home:Stopscreen(),
    );
  }
}
class Stopscreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ChangeNotifierProvider(
        create: (context)=>TimerStore(),
        child:Center( 
        child:Clock(),
        )
        )
    );
  }
}
