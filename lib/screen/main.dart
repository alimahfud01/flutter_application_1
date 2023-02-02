import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/screen10.dart';
import 'package:flutter_application_1/screen/screen11.dart';
import 'package:flutter_application_1/screen/screen12.dart';
import 'package:flutter_application_1/screen/screen13.dart';
import 'package:flutter_application_1/screen/screen14.dart';
import 'package:flutter_application_1/screen/screen15.dart';
import 'package:flutter_application_1/screen/screen16.dart';
import 'package:flutter_application_1/screen/screen17.dart';
import 'package:flutter_application_1/screen/screen18.dart';
import 'package:flutter_application_1/screen/screen19.dart';
import 'package:flutter_application_1/screen/screen2.dart';
import 'package:flutter_application_1/screen/screen20.dart';
import 'package:flutter_application_1/screen/screen21.dart';
import 'package:flutter_application_1/screen/screen22.dart';
import 'package:flutter_application_1/screen/screen3.dart';
import 'package:flutter_application_1/screen/screen4.dart';
import 'package:flutter_application_1/screen/screen5.dart';
import 'package:flutter_application_1/screen/screen6.dart';
import 'package:flutter_application_1/screen/screen7.dart';
import 'package:flutter_application_1/screen/screen8.dart';
import 'package:flutter_application_1/screen/screen9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  double buttonLenght = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aplikasi Hello World")),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 20),
            child: const Text("List Fitur", style: TextStyle(fontSize: 25)),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen2());
            },
            child: Text("Tab Bar, QrCode, Shader Mask & ClipPath"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen3());
            },
            child: Text("Audio & Font Fatures"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen4());
            },
            child: Text("Stateful Widget"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen5());
            },
            child: Text("Anonymous Method & Text"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen6());
            },
            child: Text("Animated Container"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen7());
            },
            child: Text("Flexible Widget"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen8());
            },
            child: Text("Stack dan Listview"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen9());
            },
            child: Text("Image & Spacer Widget"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen10());
            },
            child: Text("Draggable, DragTarget, SizedBox, Material"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen11());
            },
            child: Text("Multipage"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen12());
            },
            child: Text("Appbar & Card"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen13());
            },
            child: Text("Text Field & Custom Button"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen14());
            },
            child: Text("Custom Card"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen15());
            },
            child: Text("Positioned, FloatingButton, Login Page"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen16());
            },
            child: Text("Hero & ClipRect Widget & AppBar Height"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => const Screen17());
            },
            child: const Text("Consume API"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen18());
            },
            child: Text("Switch, Animated Switcher & Animated Padding"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen19());
            },
            child: Text("Shared Preferences"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen20());
            },
            child: Text("State Management"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen21());
            },
            child: Text("Multi Provider"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen22());
            },
            child: Text("BLoC"),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen15());
            },
            child: Text(""),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen15());
            },
            child: Text(""),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen15());
            },
            child: Text(""),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen15());
            },
            child: Text(""),
          ),
          ElevatedButton(
            onPressed: () {
              _navigateToScreen(context, () => Screen15());
            },
            child: Text(""),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
          )
        ],
      ),
    );
  }

  void _navigateToScreen(BuildContext context, Widget Function() createPage) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => createPage()));
  }
}
