// 現場情報のモデルクラス
import 'package:untitled2/src/constant/app_constants.dart';

class WorkSite {
  //* プロパティの数が多いため名前付きコンストラクタにして受け渡し時の引数順番ミスによる値の入れ間違いを防ぐ
  WorkSite({
    int? id,
    String? name,
    String? subName,
    String? type,
    String? staffName,
    // @ByteDataConverter() ByteData? photo,
    String? address,
    String? status,
    // DateTime? startAt,
    // DateTime? endAt,
    // DateTime? createdAt,
    // DateTime? updatedAt
  });

  factory WorkSite.fromJson(Map<String, dynamic> json) {
    return WorkSite(
      id: json[AppConstants.ID] as int,
      name: json[AppConstants.NAME] as String,
      subName: json[AppConstants.SUB_NAME] as String,
      type: json[AppConstants.TYPE] as String,
      staffName: json[AppConstants.STAFF_NAME] as String,
      address: json[AppConstants.ADDRESS] as String,
      status: json[AppConstants.STATUS] as String,
    );
  }
}
