import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int var1=1,var2=1;
  void Dice(){
    setState(() {
      var2=Random().nextInt(6)+1;
      var1=Random().nextInt(6)+1;
  }
    ); }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed:(){
                Dice();
              } ,
              child: Image.asset('images/dice$var1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed:(){
                Dice();
              } ,
              child: Image.asset('images/dice$var2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

