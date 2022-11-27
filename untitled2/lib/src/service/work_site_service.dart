import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

// 現場情報関連の問い合わせクラス
class WorkSiteservice {
  final Uri baseUrl = Uri.parse("http://127.0.0.1:8080");

  // TODO: URLが全く違う場合の処理も必要
  //* StatusCodeなどは画面側には返さない、ここは通信とか関連、画面には空でもいいから返す(それを画面で空か判定してデータなしとかの表示にする(表示に関わるところだから))
  // すべての現場情報取得
  Future findAllWorkSite() async {
    final response = await http.get(baseUrl);
    print("StatusCode:" + response.statusCode.toString());

    if (response.statusCode.toString() == dotenv.env['SUCCESS']) {
      print(response.body);
      return response;
    }
    if (response.statusCode.toString() == dotenv.env['NOT_FOUND']) {
      print(response.body);
      return response;
    }
    response;
  }
}
