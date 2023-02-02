import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/model/get_list_user_model.dart';
import 'package:flutter_application_1/model/get_user_model.dart';
import 'package:flutter_application_1/model/post_result_model.dart';
import 'package:flutter_application_1/model/put_user_model.dart';

class Screen17 extends StatefulWidget {
  const Screen17({Key? key}) : super(key: key);

  @override
  State<Screen17> createState() => _Screen17State();
}

class _Screen17State extends State<Screen17> {
  PostResult? postResult;
  GetUser? getUser;
  String getListUser = "";
  String putUser = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Consume API"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.alarm), text: "Post"),
                Tab(icon: Icon(Icons.alarm), text: "Get"),
                Tab(icon: Icon(Icons.alarm), text: "Get List"),
                Tab(icon: Icon(Icons.alarm), text: "Put"),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text((postResult != null)
                      ? ("${postResult!.id!} | ${postResult!.name!} | ${postResult!.job!}")
                      : "Tidak ada data"),
                  ElevatedButton(
                      onPressed: () {
                        PostResult.connectToAPI("Badu", "Dokter").then((value) {
                          postResult = value;
                          setState(() {});
                        });
                      },
                      child: const Text("POST"))
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text((getUser != null)
                      ? ("${getUser!.id!} | ${getUser!.name!}")
                      : "Tidak ada data"),
                  ElevatedButton(
                      onPressed: () {
                        GetUser.connectToApi("4").then((value) {
                          getUser = value;
                          setState(() {});
                        });
                      },
                      child: const Text("Get"))
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text((getListUser != "")
                      ? (getListUser.toString())
                      : "Tidak ada data"),
                  ElevatedButton(
                      onPressed: () {
                        GetListUser.connectToApi("2").then((value) {
                          for (int i = 0; i < value.length; i++) {
                            getListUser = "$getListUser[ ${value[i].name}]";
                          }
                          setState(() {});
                        });
                      },
                      child: const Text("Get List"))
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: unnecessary_null_comparison
                  Text((putUser != null)
                      ? (putUser.toString())
                      : "Tidak ada data"),
                  ElevatedButton(
                      onPressed: () {
                        PutUser.connectToAPI("morpheus", "zion resident")
                            .then((value) {
                          putUser =
                              "${value.name} ${value.job} ${value.updatedAt}";
                          setState(() {});
                        });
                      },
                      child: const Text("Put User"))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
