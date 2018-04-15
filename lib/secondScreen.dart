import 'package:flutter/material.dart';
import 'movieScreen.dart';

final _biggerFont = const TextStyle(fontSize: 16.0);

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'BASIC TECHNIQUES',
          style: new TextStyle(color: Colors.orange),
        ),
      ),
      body: new Center(
        child: new ScreenSecond(),
      ),
    );
  }
}

class ScreenSecond extends StatefulWidget {
  @override
  createState() => new ScreenSecondState();
}

class ScreenSecondState extends State<ScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Image.asset(
          'images/banner.png',
          fit: BoxFit.fitWidth,
        ),
        Divider(),
        new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(18.0),
          children: <Widget>[
            new ListTile(
              title: new Text(
                "ABDOMINAL BEATHING",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MovieScreen()),
                );
              },
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "IMPROVING BREATHING",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "ALTERNATE NOSTRIL BREATHING",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "THE PURSED LIP TECHNIQUE",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "SNIFFING INHALATION",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "SNIFFING INHALATION WITH PURSED LIPS DURING EXHALATION",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ],
    );
  }
}
