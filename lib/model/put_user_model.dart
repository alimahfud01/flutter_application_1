import 'package:http/http.dart' as http;
import 'dart:convert';

class PutUser {
  String? name;
  String? job;
  String? updatedAt;

  PutUser({this.name, this.job, this.updatedAt});

  factory PutUser.createData(Map<String, dynamic> object) {
    return PutUser(
        name: object['name'],
        job: object['job'],
        updatedAt: object['updatedAt']);
  }

  static Future<PutUser> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users/3";

    var apiResult = await http.put(Uri.parse(apiURL));
    var jsonObject = json.decode(apiResult.body);

    return PutUser.createData(jsonObject);
  }
}
