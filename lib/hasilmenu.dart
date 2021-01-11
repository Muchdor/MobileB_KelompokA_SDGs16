import 'package:flutter/material.dart';

class HasilMenu extends StatefulWidget {
  @override
  _HasilMenuState createState() => _HasilMenuState();
}

class _HasilMenuState extends State<HasilMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZeroCrime'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Center(
              child: Text('Laporan Berhasil Dikirim',
                style: TextStyle(
                  fontSize: 30, 
                  color: Colors.black
            ))),
          ],
        ),
      ),
    ); 
  }
}