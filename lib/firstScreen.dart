import 'package:flutter/material.dart';
import 'secondScreen.dart';

// void main() => runApp(new MyApp());

final _biggerFont = const TextStyle(fontSize: 14.0);

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new Center(
//         child: new FirstScreen(),
//       ),
//     );
//   }
// }

class FirstScreen extends StatefulWidget {
  @override
  createState() => new FirstScreenState();
}

class FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  // TabController controller;
  // MyTabsTitle _myHandler;
  // final List<MyTabsTitle> _tabs = [
  //   new MyTabsTitle(title: "EXERCISES"),
  //   new MyTabsTitle(title: "GAME"),
  //   new MyTabsTitle(title: "LEARNING BASE"),
  //   new MyTabsTitle(title: "PIONEERING HEALTHCARE")
  // ];

  // @override
  // void initState() {
  //   super.initState();
  //   controller = new TabController(vsync: this, length: 4);
  //   _myHandler = _tabs[0];
  //   controller.addListener(_handleSelected);
  // }

  // void _handleSelected() {
  //   setState(() {
  //     _myHandler = _tabs[controller.index];
  //   });
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Image.asset(
          'images/banner.png',
          fit: BoxFit.fitWidth,
        ),
        _textSection,
        Divider(),
        new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            new ListTile(
              title: new Text(
                "1. BASIC TECHNIQUES",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SecondScreen()),
                );
              },
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "2. SEATED EXERCISES",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "3. STANDING EXERCISES",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "4. LYING POSITION EXERCISES",
                style: _biggerFont,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            new ListTile(
              title: new Text(
                "5. RELAXATION EXERCISES",
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

Widget _textSection = new Container(
  padding: const EdgeInsets.all(10.0),
  child: new Text(
      'Watch our video guide to beathing techniques that you can use whetever you are.',
      softWrap: true,
      textAlign: TextAlign.justify,
      style: new TextStyle(fontSize: 14.0)),
);

class MyTabsTitle {
  final String title;
  MyTabsTitle({this.title});
}
