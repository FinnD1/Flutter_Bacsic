import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      child: MaterialApp(home: MyApp()),
      create: (context) => MySettings(),
    ));

class MySettings extends ChangeNotifier {
  String text = 'Done';
  Color color = Colors.red;
  void changeText() {
    if (text == 'Hello') {
      text = 'World';
    } else {
      text = 'Hello';
    }
    notifyListeners();
  }

  void changeColor() {
    if (color == Colors.red) {
      color = Colors.green;
    } else if (color == Colors.green) {
      color == Colors.red;
    }
    //notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MySettings>(
      builder: (context, MySettings, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Provider with Consumer'),
            backgroundColor: MySettings.color,
          ),
          drawer: Drawer(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      MySettings.changeColor();
                    },
                    child: Text('Change color')),
                ElevatedButton(
                    onPressed: () {
                      MySettings.changeText();
                      Navigator.pop(context);
                    },
                    child: Text('Change text')),
              ],
            )),
          ),
          body: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    MySettings.changeText();
                  },
                  child: Text('Change text')),
              Text('${MySettings.text}'),
            ],
          )),
        );
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Provider with Consumer'),
//       ),
//       drawer: Drawer(
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(onPressed: () {}, child: Text('Change color')),
//             ElevatedButton(onPressed: () {}, child: Text('Change text')),
//             Text('OK'),
//           ],
//         )),
//       ),
//       body: Center(
//           child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(onPressed: () {}, child: Text('Change text')),
//         ],
//       )),
//     );
//   }
// }
