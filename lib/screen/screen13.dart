import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/main.dart';

class Screen13 extends StatefulWidget {
  const Screen13({Key? key}) : super(key: key);

  @override
  State<Screen13> createState() => _Screen13State();
}

class _Screen13State extends State<Screen13> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Field")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "+62 ",
                  prefixStyle: TextStyle(color: Colors.red, fontSize: 16),
                  labelText: "Nomor Handphone",
                  hintText: "Start with 8",
                  helperText: "Helper text",
                  // suffix: IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(Icons.close),
                  //   color: Colors.red,
                  // ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                //obscureText: true,
                //maxLength: 5,
                maxLines: 1,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(controller.text),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Elevated Button"),
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3,
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.deepPurple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => MyApp()),
                            (Route<dynamic> route) => false);
                      },
                      child: Center(
                        child: Text(
                          "Button",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
