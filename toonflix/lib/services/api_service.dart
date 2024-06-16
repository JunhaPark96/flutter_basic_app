import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    // async programming: API 요청이 끝날 때 까지 기다리게 함
    final response = await http.get(url); // await: async 함수 내에서만 사용
    if (response.statusCode == 200) {
      print("header: ${response.headers}");
      print(
          "==================================================================================");
      print("body: ${response.body}");
      return;
    }
    throw Error();
  }
}
