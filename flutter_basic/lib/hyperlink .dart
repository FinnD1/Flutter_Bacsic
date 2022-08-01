import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Column(
              children: [textlink('phay buc', 'https://www.facebook.com/')],
            ),
          )),
    );
  }
}

class textlink extends StatelessWidget {
  final String text;
  final String url_text;
  textlink(this.text, this.url_text);
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              launch(url_text);
            }),
    );
  }
}
