import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen12 extends StatefulWidget {
  const Screen12({Key? key}) : super(key: key);

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.blueAccent.shade200,
          title: (Text("Appbar Title")),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          elevation: 5,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 45, 58, 133),
                    Color.fromARGB(255, 26, 131, 126)
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage("assets/sfpl.PNG"),
                  repeat: ImageRepeat.repeat),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "Account"),
              buildCard(Icons.adb, "Android"),
              buildCard(Icons.access_alarms, "Alarm"),
              buildCard(Icons.cabin, "Cabin"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 3,
      child: Row(
        children: <Widget>[
          Container(
              height: 40, margin: EdgeInsets.all(5), child: Icon(iconData)),
          Text(text)
        ],
      ),
    );
  }
}
