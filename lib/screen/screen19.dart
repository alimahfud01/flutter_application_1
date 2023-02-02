import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen19 extends StatefulWidget {
  const Screen19({Key? key}) : super(key: key);

  @override
  State<Screen19> createState() => _Screen19State();
}

class _Screen19State extends State<Screen19> {
  bool switchIsOn = false;
  TextEditingController controller =
      TextEditingController(text: "Nothing Here");

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("text", controller.text);
    pref.setBool("bool", switchIsOn);
  }

  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("text") ?? "No Data";
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("bool") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("App Bar")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Switch(
                value: switchIsOn,
                onChanged: (newValue) {
                  switchIsOn = newValue;
                  setState(() {});
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: const Text("Save")),
              ElevatedButton(
                  onPressed: () {
                    getName().then((value) {
                      controller.text = value;
                      setState(() {});
                    });
                    getOn().then((value) {
                      switchIsOn = value;
                      setState(() {});
                    });
                  },
                  child: const Text("Load"))
            ],
          ),
        ),
      ),
    );
  }
}
