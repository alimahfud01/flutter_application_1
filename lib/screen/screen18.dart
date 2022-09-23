import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen18 extends StatefulWidget {
  const Screen18({Key? key}) : super(key: key);

  @override
  State<Screen18> createState() => _Screen18State();
}

class _Screen18State extends State<Screen18> {
  bool switchIsOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(color: Colors.blue),
  );
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("App Bar")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                //tambah key pada widget apabila animating 2 widget yang sama
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: myWidget,
              ),
              Switch(
                activeColor: Colors.green,
                inactiveTrackColor: Colors.red.shade200,
                inactiveThumbColor: Colors.red,
                value: switchIsOn,
                onChanged: (newValue) {
                  switchIsOn = newValue;
                  setState(
                    () {
                      if (switchIsOn)
                        myWidget = SizedBox(
                          height: 100,
                          width: 200,
                          child: Center(
                            child: Text(
                              "Widget Is On",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        );
                      else {
                        myWidget = Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(color: Colors.blue));
                      }
                    },
                  );
                },
              ),
              Container(
                color: Colors.black,
                width: 200,
                height: 100,
                child: AnimatedPadding(
                  duration: Duration(seconds: 1),
                  padding: EdgeInsets.all(myPadding),
                  child: GestureDetector(
                    onTap: () {
                      myPadding = 10;
                      setState(() {});
                    },
                    onDoubleTap: () {
                      myPadding = 5;
                      setState(() {});
                    },
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
