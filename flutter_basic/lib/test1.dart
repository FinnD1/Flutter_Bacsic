import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: state(),
  ));
}

class state extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.orange,
        child: Row(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.call),
                  Text('Call'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class column extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [i],
//     );
//   }
// }
