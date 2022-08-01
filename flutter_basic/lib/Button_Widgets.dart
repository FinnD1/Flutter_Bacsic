import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybuttonstyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white12),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
      //elevation: MaterialStateProperty.all<double>(4),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
      overlayColor: MaterialStateProperty.all<Color>(Colors.white12),
      shadowColor: MaterialStateProperty.all<Color>(Colors.green),
    );

    return MaterialApp(
        title: 'Material App',
        home: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                    child: Column(
                  children: [
                    ElevatedButton(
                      style: mybuttonstyle,
                      child: Text('text button'),
                      onPressed: () {},
                    ),
                    OutlinedButton(
                      style: mybuttonstyle,
                      child: Text('OutlinedButton'),
                      onPressed: () {},
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.red,
                        backgroundColor: Colors.amber,
                      ),
                      child: Text('text button'),
                      onPressed: () {},
                    ),
                  ],
                )))));
  }
}
