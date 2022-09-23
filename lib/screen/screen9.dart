import 'package:flutter/material.dart';


class Screen9 extends StatelessWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Image & Spacer Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Spacer(flex: 2),
            Container(
              margin: EdgeInsets.all(15),
              width: 200,
              height: 200,
              padding: EdgeInsets.all(3),
              child: Image(
                  image: NetworkImage(
                      "https://asset.kompas.com/crops/W4P3no-vmu-9GnsCWwybHDufncM=/120x34:4222x2768/750x500/data/photo/2021/04/18/607ba95f8d6f7.jpg"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeatY),
              color: Colors.black,
            ),
            Spacer(flex: 1),
            Container(
              margin: EdgeInsets.all(15),
              width: 200,
              height: 200,
              padding: EdgeInsets.all(3),
              child: Image(
                  image: AssetImage("assets/sfpl.PNG"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeatY),
              color: Colors.black,
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    ));
  }
}