import 'package:flutter/material.dart';


class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  String message = "Tombol belum ditekan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Anonymous Method"),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Text(message,
                      style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          decorationThickness: 2,
                          decorationStyle: TextDecorationStyle.dashed)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          message = "Tombol sudah ditekan";
                        });
                      },
                      child: Text("Tekan"))
                ]))));
  }
}
