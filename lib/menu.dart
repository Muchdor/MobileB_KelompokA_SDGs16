import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
            Center(child: Text('Coming Soon',
            style: TextStyle(
                fontSize: 50,
                color: Colors.blueGrey,
            ))),
            Center(child: Text('Updating...',
            style: TextStyle(
                fontSize: 50,
                color: Colors.blueGrey,
            ))),
            
          ],
          // 'Coming Soon',
          // style: TextStyle(
          //   color: Colors.black,
          //   fontSize: 50,
          //   ),
        ),
      ),
    );
  }
}