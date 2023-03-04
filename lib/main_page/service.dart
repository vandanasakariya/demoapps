import 'dart:convert';

import 'package:http/http.dart' as http;

import '../more_info/second_apomodal.dart';
import 'modal.dart';

class FirstApiService {
  static Future<FirstApiModal> FirstApiServiceMethod() async {
    const url = "https://api.jikan.moe/v4/anime";
    final response = await http.get(Uri.parse(url));
    return FirstApiModal.fromJson(json.decode(response.body));
  }

  static Future<SeconScreenApi?> SecondServiceMethod() async {
    const url = "https://api.jikan.moe/v4/anime/5/full";
    final response = await http.get(Uri.parse(url));
    return SeconScreenApi.fromJson(json.decode(response.body));
  }
}
