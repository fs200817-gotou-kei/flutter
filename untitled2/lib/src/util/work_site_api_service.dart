import 'package:http/http.dart' as http;
import 'package:untitled2/src/constants/app_constants.dart';
import 'package:untitled2/src/util/connection_state_validate.dart';
import 'package:untitled2/src/util/messange_service.dart';

// 現場情報関連の問い合わせクラス
class WorkSiteApiService {
  // TODO: URLが全く違う場合の処理も必要
  //* StatusCodeなどは画面側には返さない、ここは通信とか関連、画面には空でもいいから返す(それを画面で空か判定してデータなしとかの表示にする(表示に関わるところだから))
  // すべての現場情報取得
  Future findAllWorkSites() async {
    final response = await getApi(AppConstants.WORK_SITES_BASE_URL);
    final statusCode = response.statusCode;

    // TODO: 別メソットに切り出したほうがいいかも
    if (AppConstants.IS_DEBUG) {
      // TODO: ↓も定数化すべき？(メッセージ群としてやったほうがいいかも、使いまわしもするし)
      MessageService.show(AppConstants.STATUS_CODE_MESSEGE + statusCode);
      MessageService.show(response.body.toString());
    }

    if (ConnectionStateValidate.isOk(statusCode)) return response.body;

    // TODO: NOT_FOUND時の中身って何だろう？それによって返す値が変わる
    if (ConnectionStateValidate.isNotFound(statusCode)) return response;
  }

  getApi(String work_sites_base_url) async {
    return await http.get(Uri.parse(AppConstants.WORK_SITES_BASE_URL));
  }
}
