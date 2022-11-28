import 'package:http/http.dart' as http;
import 'package:untitled2/src/constants/app_constants.dart';

// 現場情報関連の問い合わせクラス
class WorkSiteservice {
  // TODO: URLが全く違う場合の処理も必要
  //* StatusCodeなどは画面側には返さない、ここは通信とか関連、画面には空でもいいから返す(それを画面で空か判定してデータなしとかの表示にする(表示に関わるところだから))
  // すべての現場情報取得
  Future findAllWorkSites() async {
    // TODO: http.getはgetメソッドとして切り出したほうがいい
    final response =
        await http.get(Uri.parse(AppConstants.WORK_SITES_BASE_URL));
    final String statusCode = response.statusCode.toString();

    // TODO: 別メソットに切り出したほうがいいかも
    if (AppConstants.IS_DEBUG) {
      // TODO: ↓も定数化すべき？(メッセージ群としてやったほうがいいかも、使いまわしもするし)
      showMesssage(AppConstants.STATUS_CODE_MESSEGE + statusCode);
      showMesssage(response.body.toString());
    }

    if (isOk(statusCode)) return response;

    // TODO: NOT_FOUND時の中身って何だろう？それによって返す値が変わる
    if (isNotFound(statusCode)) return response;
  }

  // TODO: showは別で出力用クラスを作ったほうがいいか
  void showMesssage(String message) {
    print(message);
  }

  // TODO: 判定用のクラスを作ったほうがいいか
  bool isOk(String statusCode) {
    return statusCode == AppConstants.SUCCESS;
  }

  bool isNotFound(String statusCode) {
    return statusCode == AppConstants.NOT_FOUND;
  }
}
