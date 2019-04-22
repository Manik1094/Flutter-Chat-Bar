import 'package:flutter/material.dart';
import 'package:flutter_chat_bar/flutter_chat_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat Bar'),
      ),
      body: Center(
        child: FlutterChatBar(
          height: 60.0,
          width: 370.0,
          color: Colors.blue[800],
          firstChild:  FirstChild(),
          secondChild:  SecondChild(),
        ),
      ),
    );
  }
}

class FirstChild extends StatelessWidget {
  const FirstChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white30),
      child: SafeArea(
        left: true,
        right: true,
        top: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Message',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white30,
            child: Icon(
              Icons.camera,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white30,
            child: Icon(
              Icons.photo_size_select_actual,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white30,
            child: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
