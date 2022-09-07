//save data trong flutter cơ bản
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _score;
  late String _name;
  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  void _loadScore() async {
    final score_data = await SharedPreferences.getInstance();
    setState(() {
      _score = score_data.getInt('score') ?? 0;
    });
  }

  void _imcrementCounter() {
    setState(() {
      _score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Hi Score')),
      body: Center(child: Text('$_score')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _imcrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
