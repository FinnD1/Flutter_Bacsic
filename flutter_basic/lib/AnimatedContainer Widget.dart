import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   color: _color,
        //   width: _width,
        //   height: _height,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = _width == 100 ? 300 : 100;
                    //giống câu lệnh if else nếu width = 50 thì ta cho nó bằng 300 còn k thì ta cho nó trở lại 100
                    _height = _height == 100 ? 300 : 100;
                  });
                },
                child: Text('Change Size')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _color = _color == Colors.red ? Colors.amber : Colors.red;
                  });
                },
                child: Text('Change Color')),
          ],
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.decelerate,
          color: _color,
          width: _width,
          height: _height,
        )
      ],
    );
  }
}
