import 'package:flutter/material.dart';


class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Flexible Widget")),
            body: Column(children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.blueGrey,
                          )),
                    ],
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.brown,
                  ))
            ])));
  }
}