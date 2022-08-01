import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My app",
    home: myScaffold(),
  ));
}

class myAppBar extends StatelessWidget {
  myAppBar({required this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue),
        child: Row(children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigative menu",
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "search",
            onPressed: null,
          ),
        ]));
  }
}

class myScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        child: Column(
      children: <Widget>[
        myAppBar(
          title: Text(
            'Example Title',
            style: Theme.of(context).primaryTextTheme.headline6,
          ),
        ),
        Expanded(
          child: Center(child: Text('Hello world')),
        ),
      ],
    ));
  }
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello worldasas',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
