import 'package:flutter/material.dart';

final _smallerFont = const TextStyle(fontSize: 19.0);

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'ABDOMINAL BEATHING',
          style: new TextStyle(color: Colors.orange),
        ),
      ),
      body: new Center(
        child: new ThirdScreen(),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  createState() => new ThirdScreenState();
}

class ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        _textSection,
        new Text('Abdominal breathing', style: _smallerFont),
        _paddingSecion,
        new ListTile(
          title: new Text(
            "1. Slowly breath in and out though your nose.",
            style: _smallerFont,
            textAlign: TextAlign.justify,
          ),
        ),
        new ListTile(
          title: new Text(
            "2. Make sure that you breath flows deeply into your abdomen - and not just to your chest.",
            style: _smallerFont,
            textAlign: TextAlign.justify,
          ),
        ),
        new ListTile(
          title: new Text(
            "3. Contract the diaphragm when breathing in - the abdomen curves out. This allows you to breathe in more deeply.",
            style: _smallerFont,
            textAlign: TextAlign.justify,
          ),
        ),
        new ListTile(
          title: new Text(
            "4. When breathing out, your diaphragm relaxes and the used air is pressed out of the lungs. When you contract your ribs, this effect is reinforced.",
            style: _smallerFont,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

Widget _textSection = new Container(
  padding: const EdgeInsets.all(15.0),
);

Widget _paddingSecion = new Container(
  padding: const EdgeInsets.all(5.0),
  child: new Image.asset(
    'images/movie.png',
    fit: BoxFit.contain,
  ),
);
