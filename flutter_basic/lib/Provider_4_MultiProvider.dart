import 'package:flutter/material.dart';
import 'package:flutter_basic/Button_Widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => GioiTinh()),
      ChangeNotifierProvider(create: (_) => BangCap())
    ],
    child: MaterialApp(
      home: MyApp(),
    ),
  ));
}

enum gioi_tinh { nam, nu }

enum bang_cap { Caodang, DaiHoc, Thacsi, Tiensi }

class GioiTinh extends ChangeNotifier {
  gioi_tinh? _gioiTinh = gioi_tinh.nam;
  gioi_tinh? get gioiTinh => _gioiTinh;
  set gioiTinh(gioi_tinh? value) {
    _gioiTinh = value;
    notifyListeners();
  }
}

class BangCap extends ChangeNotifier {
  bang_cap? _bangcap = bang_cap.DaiHoc;
  bang_cap? get bangcap => _bangcap;
  set bangcap(value) {
    _bangcap = value;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio demo'),
      ),
      body: Consumer2<GioiTinh, BangCap>(
          builder: (context, infoGioiTinh, infoBangCap, child) {
        return Column(
          children: [
            Text(
              'Gioi Tinh',
            ),
            //TODO: them nut radio gioi tinh
            RadioListTile<gioi_tinh?>(
              value: gioi_tinh.nam,
              title: Text('Nam'),
              secondary: Icon(Icons.male),
              groupValue: infoGioiTinh._gioiTinh,
              onChanged: (value) {
                infoGioiTinh.gioiTinh = value;
              },
            ),
            RadioListTile<gioi_tinh?>(
                value: gioi_tinh.nu,
                title: Text('Nu'),
                secondary: Icon(Icons.female),
                groupValue: infoGioiTinh._gioiTinh,
                onChanged: (value) {
                  infoGioiTinh.gioiTinh = value;
                }),
            Text('BangCap'),
            RadioListTile<bang_cap?>(
                value: bang_cap.DaiHoc,
                title: Text('Dai Hoc'),
                groupValue: infoBangCap.bangcap,
                onChanged: (value) {
                  infoBangCap.bangcap = value;
                }),
            RadioListTile<bang_cap?>(
                value: bang_cap.Caodang,
                title: Text('Cao dang'),
                groupValue: infoBangCap.bangcap,
                onChanged: (value) {
                  infoBangCap.bangcap = value;
                }),
            RadioListTile<bang_cap?>(
                value: bang_cap.Thacsi,
                title: Text('Thac si'),
                groupValue: infoBangCap.bangcap,
                onChanged: (value) {
                  infoBangCap.bangcap = value;
                }),
            RadioListTile<bang_cap?>(
                value: bang_cap.Tiensi,
                title: Text('Tien si'),
                groupValue: infoBangCap.bangcap,
                onChanged: (value) {
                  infoBangCap.bangcap = value;
                }),
            //TODO:them radio bang cap
            Center(
              child: Text(
                  'Thong tin ca nhan : ${infoGioiTinh.gioiTinh} , ${infoBangCap.bangcap}'),
            )
          ],
        );
      }),
    );
  }
}
