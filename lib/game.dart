import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(
      //     'GAME',
      //     style: new TextStyle(color: Colors.orange),
      //   ),
      // ),
      body: new Center(
        child: new Image.asset('images/game.png', fit: BoxFit.fill)
      ),
    );
  }
}
