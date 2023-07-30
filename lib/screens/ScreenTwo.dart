import 'package:assignmnet/Square.dart';
import 'package:flutter/material.dart';

class  ScreenTwo extends StatefulWidget {
  const ScreenTwo ({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Task Board'),),
      ),
      body: ListView(
        children:[
        MySquare(),
        MySquare(),
        MySquare(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          backgroundColor: Colors.black,
          shape: CircleBorder(eccentricity: 1) ,
          child: Icon(
              Icons.add,
              color:Colors.white
          )
      ),
    );
  }
}