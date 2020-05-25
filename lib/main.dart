import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();

  Widget createButton(
      Color buttonColor, String audioFile, double buttonPadding) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: buttonPadding, vertical: 5),
        child: FlatButton(
          color: buttonColor,
          shape: ContinuousRectangleBorder(),
          //color: buttonColor,
          onPressed: () {
            player.play('audio/' + audioFile + '.wav');
          },
        ),
      ),
    );
  }

  Widget createMultiButton(Color buttonColor, double buttonPadding) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: buttonPadding, vertical: 5),
        child: FlatButton(
          shape: ContinuousRectangleBorder(),
          color: buttonColor,
          onPressed: () {
            player.play('audio/note1.wav');
            player.play('audio/note2.wav');
            player.play('audio/note3.wav');
            player.play('audio/note4.wav');
            player.play('audio/note5.wav');
            player.play('audio/note6.wav');
            player.play('audio/note7.wav');
          },
          child: null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                createButton(Colors.red[500], 'note1', 10),
                createButton(Colors.orange[500], 'note2', 15),
                createButton(Colors.yellow[500], 'note3', 20),
                createButton(Colors.green[500], 'note4', 25),
                createButton(Colors.teal[500], 'note5', 30),
                createButton(Colors.blue[500], 'note6', 35),
                createButton(Colors.purple[500], 'note7', 40),
                createMultiButton(Colors.black, 45),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
