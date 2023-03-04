import 'dart:convert';

import 'package:demoapps/first_api/modal.dart';
import 'package:demoapps/second_api/second_apomodal.dart';
import 'package:http/http.dart' as http;

class FirstApiService {
  static Future<FirstApiModal> FirstApiServiceMethod() async {
    const url = "https://api.jikan.moe/v4/anime";
    final response = await http.get(Uri.parse(url));
    return FirstApiModal.fromJson(json.decode(response.body));
  }

  static Future<SecondApiModal?> SecondServiceMethod() async {
    const url = "https://api.jikan.moe/v4/anime/5/full";
    final response = await http.get(Uri.parse(url));
    return SecondApiModal.fromJson(json.decode(response.body));
  }
}
