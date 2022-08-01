import 'package:flutter/material.dart';

void main() {
  runApp(const OngBa());
}

int counterOngBa = 0;
int counterBoMe = 0;
int counterConCai = 0;
int counterCoChu = 0;

class OngBa extends StatefulWidget {
  const OngBa({Key? key}) : super(key: key);

  @override
  State<OngBa> createState() => _OngBaState();
}

class _OngBaState extends State<OngBa> {
  void foo() {
    setState(() {
      print('class OngBa setState lan thu $counterOngBa');
      print('class ConCai setState lan thu $counterConCai');
    });
  }

  @override
  Widget build(BuildContext context) {
    counterOngBa++;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  print('Class OngBa setstate lan thu $counterOngBa');
                });
              },
              child: Text('Ong ba build lan thu $counterOngBa'),
            ),
          ),
          BoMe(foo: foo),
          CoChu(),
        ],
      ),
    );
  }
}

class BoMe extends StatefulWidget {
  BoMe({Key? key, this.foo}) : super(key: key);
  final VoidCallback? foo;

  @override
  State<BoMe> createState() => _BoMeState();
}

class _BoMeState extends State<BoMe> {
  @override
  Widget build(BuildContext context) {
    counterBoMe++;
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            //widget.foo!();
            setState(() {
              print('Class BoMe setstate lan thu $counterBoMe');
            });
          },
          child: Text('BoMe build lan thu $counterBoMe'),
        ),
        ConCai(),
      ],
    );
  }
}

class ConCai extends StatefulWidget {
  ConCai({Key? key}) : super(key: key);

  @override
  State<ConCai> createState() => _ConCaiState();
}

class _ConCaiState extends State<ConCai> {
  @override
  Widget build(BuildContext context) {
    counterConCai++;
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            counterOngBa++;
            print('Class ConCai setstate lan thu $counterConCai');
          });
        },
        child: Text('ConCai build lan thu $counterConCai'),
      ),
    );
  }
}

class CoChu extends StatefulWidget {
  CoChu({Key? key}) : super(key: key);

  @override
  State<CoChu> createState() => _CoChuState();
}

class _CoChuState extends State<CoChu> {
  @override
  Widget build(BuildContext context) {
    counterCoChu++;
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            print('Class CoChu setstate lan thu $counterCoChu');
          });
        },
        child: Text('CoChu build lan thu $counterCoChu'),
      ),
    );
  }
}
