import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Material App Bar'),
              leading: Builder(
                  builder: (context) => IconButton(
                      icon: Icon(Icons.face),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      })),
              actions: [
                Builder(
                    builder: (context) => IconButton(
                        icon: Icon(Icons.face),
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        }))
              ],
            ),
            drawer: Drawer(
              //mở menu trên điện thoại
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child: Text('ok'),
              ),
            ),
            endDrawer: Drawer(
              //mở menu trên điện thoại
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child: Text('ok'),
              ),
            ),
            body: Center(
              child: Container(
                child: Text(
                  'Hello World' * 5,
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.overline),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.share),
              onPressed: (() {}),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Container(
                height: 50,
                //color: Colors.pinkAccent,
              ),
            )));
  }
}
