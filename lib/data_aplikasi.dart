import 'package:flutter/material.dart';

class DetailAplikasi extends StatelessWidget {
  final String itemJudul;
  final String itemSub;

  const DetailAplikasi({Key key, this.itemJudul, this.itemSub})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          '' + itemJudul,
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            itemJudul,
            style: TextStyle(color: Colors.redAccent, fontSize: 24.0),
          ),
          Text(itemSub, style: TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }
}
