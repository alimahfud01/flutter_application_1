import 'dart:math';

import 'package:flutter/material.dart';


class Screen6 extends StatefulWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Animated Container")),
            body: Center(
                child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101),
              ),
            ))));
  }
}