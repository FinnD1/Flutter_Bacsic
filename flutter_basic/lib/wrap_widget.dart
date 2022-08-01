import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap widget'),
        ),
        body: Center(
          child: Wrap(
            direction: Axis.horizontal,
            runSpacing: 10,
            alignment: WrapAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
              myContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class myContainer extends StatelessWidget {
  const myContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(10),
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}
