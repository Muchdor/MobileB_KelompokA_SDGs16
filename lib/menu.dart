import 'package:flutter/material.dart';
import 'package:mobile_app/isimenu.dart';
import 'package:mobile_app/router.dart';
import 'kontak.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/images/hacking.png'),
      ),
    );

    final laporanPage = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Router.changePage(context, IsiMenu());
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Buat Laporan', style: TextStyle(color: Colors.white)),
      ),
    );
    
    final kontakPage = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Router.changePage(context, KontakView());
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Kontak Darurat', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ZeroCrime'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            logo,
            SizedBox(height : 70.0),
            laporanPage, 
            kontakPage, 
            SizedBox(height: 250.0),
                     
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