import 'package:flutter/material.dart';
import 'package:flutter_basic/expand_widget.dart';
import 'package:flutter_basic/stateless.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          //childAspectRatio: 0.5,
          //mainAxisExtent: 50
        ),
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 50,
        //     mainAxisSpacing: 30,
        //     childAspectRatio: 0.5,
        //     mainAxisExtent: 50),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.pinkAccent,
          ),
          for (var i = 0; i < 50; i++)
            Image.network('https://picsum.photos/250?image=$i')
        ],
      ),
    );
  }
}
