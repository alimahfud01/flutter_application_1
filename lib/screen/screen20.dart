import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/provider/application_color.dart';
import 'package:provider/provider.dart';

class Screen20 extends StatefulWidget {
  const Screen20({Key? key}) : super(key: key);

  @override
  State<Screen20> createState() => _Screen20State();
}

class _Screen20State extends State<Screen20> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: ((context, value, _) => Text(
                    "App Bar",
                    style: TextStyle(color: value.color),
                  )),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, value, _) => AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    margin: EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    color: value.color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("AB"),
                    ),
                    Consumer<ApplicationColor>(
                      builder: ((context, value, _) => Switch(
                            value: value.isLightBlue,
                            onChanged: (newValue) {
                              value.isLightBlue = newValue;
                              setState(() {});
                            },
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text("LB"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
