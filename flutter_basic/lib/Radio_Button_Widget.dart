import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  myappstate createState() => myappstate();
}

int gioitinh = 0;

class myappstate extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //sự khác nhau giữa radiolisttilte vs lít title là radio chọn được ở bất kì đâu trong ô còn list title chỉ chọn đc dấu tích vậy nên ưu tiên radiolisttitle hơn
            RadioListTile(
                title: Text('Gay'),
                subtitle: Text('LGBT'),
                secondary: Icon(Icons.female),
                //selectedTileColor: Colors.amber,
                //selected: true,
                //tileColor: Colors.amber,
                contentPadding: EdgeInsets.all(20),
                activeColor: Colors.amber,
                shape: Border.all(width: 10, color: Colors.amber),
                value: 2,
                groupValue: gioitinh,
                onChanged: ((value) {
                  setState(() {
                    gioitinh = int.parse(value.toString());
                  });
                })),
            ListTile(
                title: Text('Male'),
                leading: Radio(
                    value: 0,
                    groupValue: gioitinh,
                    onChanged: ((value) {
                      setState(() {
                        gioitinh = int.parse(value.toString());
                      });
                    }))),
            ListTile(
                title: Text('Female'),
                leading: Radio(
                    value: 1,
                    groupValue: gioitinh,
                    onChanged: ((value) {
                      setState(() {
                        gioitinh = int.parse(value.toString());
                      });
                    }))),
          ]),
    );
  }
}
