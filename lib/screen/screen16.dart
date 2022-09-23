import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen16 extends StatefulWidget {
  const Screen16({Key? key}) : super(key: key);

  @override
  State<Screen16> createState() => _Screen16State();
}

class _Screen16State extends State<Screen16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Positioned(
            bottom: 1,
            left: 0,
            child: Text(
              "AppBar ascsbjkcbaslh",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage16();
            }));
          },
          child: Hero(
            tag: "pp",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 100,
                height: 100,
                child: Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492__340.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage16 extends StatelessWidget {
  const SecondPage16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492__340.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
