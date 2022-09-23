import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  late AudioPlayer audioPlayer;
  String duration = "00:00:00";

  _Screen3State() {
    audioPlayer = AudioPlayer();
    audioPlayer.onPositionChanged.listen((event) {
      setState(() {
        duration = event.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void playSound(String url) async {
    await audioPlayer.play(url as Source);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                playSound(
                    "https://cdn.beatzjam.com/wp-content/uploads/2021/Eminem-Feat-Rihanna-Love-The-Way-You-Lie--(BeatzJam.com).mp3");
              },
              child: Text("Play"),
            ),
            ElevatedButton(
              onPressed: () {
                pauseSound();
              },
              child: Text("Pause"),
            ),
            ElevatedButton(
              onPressed: () {
                stopSound();
              },
              child: Text("Stop9",
                  style:
                      TextStyle(fontFeatures: [FontFeature.oldstyleFigures()])),
            ),
            ElevatedButton(
              onPressed: () {
                resumeSound();
              },
              child: Text(
                "Resume",
                style: TextStyle(fontFeatures: [FontFeature.enable("smcp")]),
              ),
            ),
            Text(
              duration,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
