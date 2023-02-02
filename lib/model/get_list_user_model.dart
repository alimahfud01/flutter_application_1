import 'package:http/http.dart' as http;
import 'dart:convert';

class GetListUser {
  String? id;
  String? name;

  GetListUser({this.id, this.name});

  factory GetListUser.createUser(Map<String, dynamic> object) {
    return GetListUser(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name']);
  }

  static Future<List<GetListUser>> connectToApi(String id) async {
    String apiURL = "https://reqres.in/api/users?page=$id";

    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<GetListUser> data = [];
    for (int i = 0; i < listUser.length; i++) {
      data.add(GetListUser.createUser(listUser[i]));
    }
    return data;
  }
}
