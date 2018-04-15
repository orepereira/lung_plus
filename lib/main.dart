import 'package:flutter/material.dart';

import 'game.dart';
import 'about.dart';
import 'firstScreen.dart';

void main() {
  runApp(new MaterialApp(home: new MyTabs()));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;
  MyTabsTitle _myHandler;

  final List<MyTabsTitle> _tabs = [
    new MyTabsTitle(title: "EXERCISES"),
    new MyTabsTitle(title: "GAME"),
    new MyTabsTitle(title: "LEARNING BASE"),
    new MyTabsTitle(title: "PIONEERING HEALTHCARE")
  ];

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
    _myHandler = _tabs[0];
    controller.addListener(_handleSelected);
  }

  void _handleSelected() {
    setState(() {
      _myHandler = _tabs[controller.index];
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            _myHandler.title,
            style: new TextStyle(color: Colors.orange),
          ),
        ),
        bottomNavigationBar: new Material(
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(text: "VIDEO", icon: new Icon(Icons.movie)),
              new Tab(text: "GAME", icon: new Icon(Icons.videogame_asset)),
              new Tab(text: "LEARN", icon: new Icon(Icons.school)),
              new Tab(text: "ABOUT", icon: new Icon(Icons.help_outline)),
            ],
          ),
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new FirstScreen(),
            new GameScreen(),
            new DeadEnd(),
            new AboutScreen(),
          ],
        ),
      ),
    );
  }


}

class MyTabsTitle {
  final String title;
  MyTabsTitle({this.title});
}

class DeadEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(child: new Text("Nothing here!")),
    );
  }
}
