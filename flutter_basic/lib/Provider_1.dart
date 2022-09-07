import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (_) => counterProvider(),
      child: MaterialApp(
        home: MyApp(),
      ),
    ));

class counterProvider extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void add() {
    _counter++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.watch<counterProvider>().counter.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          context.read<counterProvider>().add();
        },
      ),
    );
  }
}
