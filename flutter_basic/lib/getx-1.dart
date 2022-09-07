import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
  RxInt count = 0.obs;//khi biến mà muốn thay đổi trên màn hình thì thêm obs đằng sau

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Obx(
          //ở các widget muốn xem sự thay đổi thì ta phải để trong hàm Obx(()=>)
          () => Text(
            '$count',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
