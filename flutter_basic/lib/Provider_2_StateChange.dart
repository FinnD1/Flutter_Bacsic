//Quản lý State nhiều màn hình trong Flutter với Provider
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (_) => counterProvider(),
      child: MaterialApp(
        home: HomeScreen(),
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            context.watch<counterProvider>().counter.toString(),
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SecondScreen()));
              },
              child: Text('Go to second screen'))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<counterProvider>().add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondScreen'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            context.watch<counterProvider>().counter.toString(),
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Text('Go to second screen'))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<counterProvider>().add();
        },
        child: Icon(Icons.add),
      ),
    );
    ;
  }
}
