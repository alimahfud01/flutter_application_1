import 'package:http/http.dart' as http;
import 'dart:convert';

class GetUser {
  String? id;
  String? name;

  GetUser({this.id, this.name});

  factory GetUser.createUser(Map<String, dynamic> object) {
    return GetUser(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name']);
  }

  static Future<GetUser> connectToApi(String id) async {
    String apiURL = "https://reqres.in/api/users/" + id;

    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return GetUser.createUser(userData);
  }
}
