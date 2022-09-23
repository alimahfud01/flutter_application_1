import 'package:flutter/material.dart';


class Screen8 extends StatefulWidget {
  const Screen8({Key? key}) : super(key: key);

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Stack dan Listview")),
            body: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Row(children: <Widget>[
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                              )),
                          Flexible(flex: 1, child: Container())
                        ])),
                    Flexible(
                        flex: 1,
                        child: Row(children: <Widget>[
                          Flexible(flex: 1, child: Container()),
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.blue,
                              ))
                        ]))
                  ],
                ),
                ListView(
                  children: <Widget>[Column(children: widgets)],
                ),
                Align(
                  alignment: Alignment(0, 0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widgets.add(Text(
                                  "Here, I have a utility class in which I have a function for showing DialogBox, so I'm trying to make an AlertDialog Box which can be used anywhere in the whole project.",
                                  style: TextStyle(fontSize: 30)));
                            });
                          },
                          child: Text("Tambah")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widgets.removeLast();
                            });
                          },
                          child: Text("Kurang")),
                    ],
                  ),
                )
              ],
            )));
  }
}