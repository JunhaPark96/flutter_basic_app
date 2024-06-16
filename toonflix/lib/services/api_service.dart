import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = []; // webtoon 저장 인스턴스

    final url = Uri.parse('$baseUrl/$today');
    // async programming: API 요청이 끝날 때 까지 기다리게 함
    final response = await http.get(url); // await: async 함수 내에서만 사용
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        // final toon = WebtoonModel.fromJson(webtoon);
        // print(toon.title);
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      // print("header: ${response.headers}");
      // print(
      //     "==================================================================================");
      // print("body: ${response.body}");
      return webtoonInstances;
    }
    throw Error();
  }
}
