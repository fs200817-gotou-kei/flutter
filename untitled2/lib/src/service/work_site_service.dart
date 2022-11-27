import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:untitled2/src/constants/app_constants.dart';

// 現場情報関連の問い合わせクラス
class WorkSiteservice {
  final Uri baseUrl = Uri.parse(AppConstants.WORK_SITES_BASE_URL);

  // TODO: URLが全く違う場合の処理も必要
  //* StatusCodeなどは画面側には返さない、ここは通信とか関連、画面には空でもいいから返す(それを画面で空か判定してデータなしとかの表示にする(表示に関わるところだから))
  // すべての現場情報取得
  Future findAllWorkSites() async {
    final response = await http.get(baseUrl);
    final String statusCode = response.statusCode.toString();
    print("StatusCode:" + statusCode);
    print(response.body);

    if (isOk(statusCode)) return response;

    // TODO: NOT_FOUND時の中身って何だろう？それによって返す値が変わる
    if (isNotFound(statusCode)) return response;
  }

  bool isOk(String statusCode) {
    return statusCode == AppConstants.SUCCESS;
  }

  bool isNotFound(String statusCode) {
    return statusCode == AppConstants.NOT_FOUND;
  }
}
