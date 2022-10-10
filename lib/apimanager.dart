import './ques.dart';
import 'package:dio/dio.dart';

class ApiManager {
  final Dio dio = Dio();
  Future<List<ques>> getques() async {
    final res = await dio.get(
        'https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple');
    List<ques> response = [];
    for (var item in res.data) {
      response.add(ques.fromJson(item));
    }
    print(response);
    return response;
  }
}
