import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 50,left: 30),
          child: Row(
            children: [
             /* Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurple.shade700,Colors.deepPurple.shade500])),

              ),*/
              Test(x: 480, y: 70, color1: Colors.indigo, color2: Colors.indigo.shade300,txt: "Do",audio: 'assets/audio/note1.mp3',),
              SizedBox(width: 10,),
              Test(x: 350, y: 70, color1: Colors.teal.shade800, color2: Colors.teal.shade400, txt: "What",audio: 'assets/audio/note2.mp3'),
              SizedBox(width: 10,),
              Test(x: 300, y: 70, color1: Colors.cyan.shade800, color2: Colors.cyan.shade500, txt: "You",audio: 'assets/audio/note3.mp3'),
              SizedBox(width: 10,),
              Test(x: 250, y: 70, color1: Colors.lightBlue.shade900, color2: Colors.lightBlue.shade500, txt: "Love",audio: 'assets/audio/note4.mp3'),
              SizedBox(width: 10,),
              Test(x: 200, y: 70, color1: Colors.blue.shade900, color2: Colors.blue.shade500, txt: "At",audio: 'assets/audio/note5.mp3'),
              SizedBox(width: 10,),
              Test(x: 150, y: 70, color1: Colors.indigo.shade900, color2: Colors.indigo.shade400, txt: "Any",audio: 'assets/audio/note6.mp3'),
              SizedBox(width: 10,),
              Test(x: 100, y: 70, color1: Colors.brown.shade800, color2: Colors.brown.shade400, txt: "Time",audio: 'assets/audio/note7.mp3'),
              SizedBox(width: 10,),
              Test(x: 50, y: 70, color1: Colors.deepOrange.shade900, color2: Colors.deepOrange.shade300, txt: "!",audio: 'assets/audio/note8.mp3')

            ],
          ),
        ),
      ),
    );
  }
}
class Test extends StatelessWidget {
  const Test({required this.x,required this.y,required this.color1 ,required this.color2,required this.txt,required this.audio,Key? key}) : super(key: key);

  final double x;
  final double y;
  final dynamic color1;
  final dynamic color2;
  final dynamic txt;
  final dynamic audio;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AssetsAudioPlayer.newPlayer().open(
          Audio(audio),
          autoStart: true,
          showNotification: true

        );

        //final assetsAudioPlayer=AssetsAudio

      },
      child: Container(
        height: x,
        width: y,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [color1,color2]),borderRadius: BorderRadius.circular(30)),

        child: Center(child: Text(txt,style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,)),
      ),
    );
  }
}
