import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(
      home: Home(),
    ));

class Counter extends GetxController {
  var count = 0.obs;
  void add() {
    count++;
  }
}

class Home extends StatelessWidget {
  final counter = Get.put(Counter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                '${counter.count}',
                style: TextStyle(fontSize: 40),
              )),
          ElevatedButton(
              onPressed: (() {
                Get.to(OtherScreen());
              }),
              child: Text('Go to Other Screen')),
          ElevatedButton(
              onPressed: () {
                Get.to(ThirdScreen());
              },
              child: Text('Show Snack Bar'))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  final Counter otherScreen = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Obx(() =>
              Text('${otherScreen.count}', style: TextStyle(fontSize: 40)))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          otherScreen.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Show Snack Bar'),
              onPressed: () {
                Get.snackbar('helllo', 'Xin chao mn',
                    snackPosition: SnackPosition.TOP, colorText: Colors.amber);
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Go Back'))
          ],
        ));
  }
}
