import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  final _messangerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messangerKey,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.mail),
            onPressed: () {
              var mySnackbar = SnackBar(
                content: Text('lo cai bip'),
                backgroundColor: Colors.amber,
                duration: Duration(milliseconds: 100),
              );
              _messangerKey.currentState!.showSnackBar(mySnackbar);
            }),
      ),
    );
  }
}
