import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl = 'http://192.168.2.11:3000/';

Future<List<dynamic>> getCrew() async {
  final response = await http.get(Uri.parse('${baseUrl}crew/members'));
  final list = await jsonDecode(response.body);
  return list;
}

Future<int> putCrew(String name, String position) async {
  final response = await http.post(Uri.parse('${baseUrl}crew/members'),
      body: {'name': name, 'position': position});
  final result = int.parse(response.body);
  return result;
}
