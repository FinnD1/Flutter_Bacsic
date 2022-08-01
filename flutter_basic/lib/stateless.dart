import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: state(),
  ));
}

class state extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigative",
          onPressed: null,
        ),
        title: Center(child: Text('Hello world')),
        actions: <Widget>[
          IconButton(onPressed: null, icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Text('Hello world'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
        tooltip: "Add",
      ),
    );
  }
}
