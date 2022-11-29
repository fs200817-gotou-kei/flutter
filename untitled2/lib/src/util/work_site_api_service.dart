import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled2/src/constants/app_constants.dart';
import 'package:untitled2/src/model/entity/work_site/work_site.dart';
import 'package:untitled2/src/util/connection_state_validate.dart';
import 'package:untitled2/src/util/messange_service.dart';
import 'package:untitled2/src/util/type_converter.dart';

// 現場情報関連の問い合わせクラス
class WorkSiteApiService {
  // TODO: URLが全く違う場合の処理も必要
  //* StatusCodeなどは画面側には返さない、ここは通信とか関連、画面には空でもいいから返す(それを画面で空か判定してデータなしとかの表示にする(表示に関わるところだから))
  // すべての現場情報取得
  Future<List<dynamic>> findAllWorkSites() async {
    final response = await getApi(AppConstants.WORK_SITES_BASE_URL);
    final statusCode = response.statusCode;

    // debugメッセージと普通のメッセージが分かれているのが少し気持ちが悪い
    showDebugMessage(statusCode, response);

    // validatedクラス側でこのif文作ってやったほうがいいのかな？(そっち側でheader情報とかを変えてしまう)
    if (ConnectionStateValidate.isOk(statusCode)) {
      return TypeConverter.jsonToObject(response.bodyBytes);
    }

    // TODO: NOT_FOUND時の中身って何だろう？それによって返す値が変わる
    if (ConnectionStateValidate.isNotFound(statusCode))
      return TypeConverter.jsonToObject(response.bodyBytes);

    // TODO: ↓そのほかの場合どう処理するか
    return TypeConverter.jsonToObject(response.bodyBytes);
  }

  getApi(String work_sites_base_url) async {
    return await http.get(Uri.parse(AppConstants.WORK_SITES_BASE_URL));
  }

  void showDebugMessage(statusCode, response) {
    if (AppConstants.IS_DEBUG) {
      MessageService.show(
          AppConstants.STATUS_CODE_MESSEGE + statusCode.toString());
      MessageService.show(response.body.toString());
    }
  }
}
