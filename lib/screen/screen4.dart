import 'package:flutter/material.dart';


class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Stateful Widget"),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      number.toString(),
                      style: TextStyle(fontSize: 24),
                    ),
                    ElevatedButton(
                        onPressed: tekanTombol, child: Text("Tambah Bilangan")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            number = 0;
                          });
                        },
                        child: Text("Hapus"))
                  ]),
            )));
  }
}
