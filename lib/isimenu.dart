import 'package:flutter/material.dart';
import 'package:mobile_app/hasilmenu.dart';
import 'package:mobile_app/router.dart';

class IsiMenu extends StatefulWidget {
  @override
  _IsiMenuState createState() => _IsiMenuState();
}

class _IsiMenuState extends State<IsiMenu> {
  @override
  Widget build(BuildContext context) {
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Router.changePage(context, HasilMenu());
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Buat Laporan', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ZeroCrime'),
      ),
      body: Center(
        child : ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter a search term'
              ),
            ),
            SizedBox(height : 50.0),
            loginButton,
          ],
        )
      ),
    );
  }
}