import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(
      //     'PIONEERING HEALTHCARE',
      //     style: new TextStyle(color: Colors.orange),
      //   ),
      // ),
      body: new Center(
        child: new Image.asset('images/more.png', fit: BoxFit.fill)
      ),
    );
  }
}