import 'package:flutter/material.dart';


class Screen10 extends StatefulWidget {
  const Screen10({Key? key}) : super(key: key);

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  late Color targetColor;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:
              AppBar(title: Text("Draggable, DragTarget, SizedBox, Material")),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          color: color1, shape: StadiumBorder(), elevation: 3),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                          elevation: 3),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          color: color1.withOpacity(0.7),
                          shape: StadiumBorder(),
                          elevation: 3),
                    ),
                  ),
                  Draggable<Color>(
                    data: color2,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          color: color2, shape: StadiumBorder(), elevation: 3),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                          elevation: 3),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                          color: color2.withOpacity(0.7),
                          shape: StadiumBorder(),
                          elevation: 3),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
                builder: (context, candidateData, rejectedData) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                              color: targetColor,
                              shape: StadiumBorder(),
                              elevation: 3),
                        )
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                              color: Colors.grey,
                              shape: StadiumBorder(),
                              elevation: 3));
                },
              )
            ],
          )),
    );
  }
}