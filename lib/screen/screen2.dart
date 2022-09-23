import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String? text = "Hasil QR Scan";
  TabBar myTabBar = TabBar(
    indicator: BoxDecoration(
      color: Colors.blueAccent,
      border: Border(
        bottom: BorderSide(color: Colors.black, width: 3),
      ),
    ),
    // indicatorColor: Colors.black,
    tabs: [
      Tab(
        icon: Icon(Icons.comment),
        text: "QR Code",
      ),
      Tab(
        icon: Icon(Icons.computer),
        text: "Shader Mask",
      ),
      Tab(
        icon: Icon(Icons.qr_code),
        text: "ClipPath",
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(
                  child: myTabBar,
                  color: Colors.green,
                )),
          ),
          body: TabBarView(
            children: [
              Center(
                child: QrImage(
                  version: 6,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  errorCorrectionLevel: QrErrorCorrectLevel.M,
                  padding: EdgeInsets.all(20),
                  size: 300,
                  data: "aaa",
                ),
              ),
              Center(
                  child: ShaderMask(
                shaderCallback: (rectangle) {
                  return LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(
                      Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image(
                  width: 300,
                  height: 200,
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg"),
                ),
              )),
              Center(
                child: Center(
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: Image(
                      width: 300,
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
