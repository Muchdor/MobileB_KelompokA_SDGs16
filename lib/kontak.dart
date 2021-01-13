import 'package:flutter/material.dart';

class KontakPage extends StatelessWidget {
  final List<String> images;
  final List<String> title;
  final List<String> phones;

  KontakPage({this.images,this.title,this.phones});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      child: ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
    return Card(
      elevation: 10.0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: ExactAssetImage(images[index]),
        ),

        title: Text(title[index], style: TextStyle(fontSize: 17)),
        subtitle: Text(phones[index], style: TextStyle(fontSize: 15)),
        
        ),
        );
      },
     )
    );
  }
}
class KontakView extends StatefulWidget {
  @override
  _KontakViewState createState() => _KontakViewState();
}

  class _KontakViewState extends State<KontakView> {
    final List<String> myList = [
    'assets/images/hacking.png',
    'assets/images/hacking.png',
    'assets/images/hacking.png',
    'assets/images/hacking.png',
    'assets/images/hacking.png',
  ];
  final List<String> names = ['Kantor Polisi', 'Rumah Sakit', 'Pemadam Kebakaran', 'Basarnas', 'TNI'];
  final List<String> phones = [
    '(021)678392',
    '(021)678334',
    '(021)672414',
    '(021)678390',
    '(021)679992'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('ZeroCrime'),
      ),
    body : Center(
      child: ListView(
        children: <Widget>[
          Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 14.0),
        child: Text(
          'Kontak Darurat: ',
        style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
          ),
        ),
        ),
        
        KontakPage(
        images: myList,
        title: names,
        phones: phones,
        )
        ],
      ),
    ),
    );   
  }
}