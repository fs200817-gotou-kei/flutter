import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/model/work_site.dart';

// 現場情報関連の問い合わせクラス
class WorkSiteApiService {
  final Logger logger = Logger();
  // TODO: URLが全く違う場合の処理も必要
  //* StatusCodeなどは画面側には返さない、ここは通信とか関連、画面には空でもいいから返す(それを画面で空か判定してデータなしとかの表示にする(表示に関わるところだから))
  // すべての現場情報取得
  Future<dynamic> findAllWorkSites() async {
    final response = await getApi(AppConstants.WORK_SITES_BASE_URL);
    final statusCode = response.statusCode.toString();

    // debugメッセージと普通のメッセージが分かれているのが少し気持ちが悪い
    showDebugMessage(statusCode, response);

    // validatedクラス側でこのif文作ってやったほうがいいのかな？(そっち側でheader情報とかを変えてしまう)
    logger.d(response.body.toString());
    String utfData = utf8.decode(response.bodyBytes);
    final jsonData = json.decode(utfData);
    final workSites =
        List<WorkSite>.from(jsonData.map((item) => WorkSite.fromJson(item)));

    logger.d(workSites.toString());
    return workSites;
  }

  getApi(String work_sites_base_url) async {
    return await http.get(Uri.parse(AppConstants.WORK_SITES_BASE_URL));
  }

  void showDebugMessage(statusCode, response) {
    if (AppConstants.IS_DEBUG) {
      logger.d(AppConstants.STATUS_CODE_MESSEGE + statusCode.toString());
      logger.d(response.body.toString());
    }
  }
}
