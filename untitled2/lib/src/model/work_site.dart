import 'package:flutter/foundation.dart';
import 'package:untitled2/src/constants/app_constants.dart';

// 現場情報のモデルクラス
class WorkSite {
  final int? id;
  final String? name;
  final String? subName;
  final String? type;
  final String? staffName;

  // TODO: 型はこれでいいのか
  final ByteData? photo;

  final String? address;
  final String? status;
  final DateTime? startAt;
  final DateTime? endAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  //* プロパティの数が多いため名前付きコンストラクタにして受け渡し時の引数順番ミスによる値の入れ間違いを防ぐ
  WorkSite(
      {this.id,
      this.name,
      this.subName,
      this.type,
      this.staffName,
      this.photo,
      this.address,
      this.status,
      this.startAt,
      this.endAt,
      this.createdAt,
      this.updatedAt});

  // APIからデータを受け取ったあとjsonからDartオブジェクト型へ変換する
  WorkSite.fromJson(Map<String, dynamic> jsonWorkSite)
      : id = jsonWorkSite[AppConstants.ID],
        name = jsonWorkSite[AppConstants.NAME],
        subName = jsonWorkSite[AppConstants.SUB_NAME],
        type = jsonWorkSite[AppConstants.TYPE],
        staffName = jsonWorkSite[AppConstants.STAFF_NAME],
        photo = jsonWorkSite[AppConstants.PHOTO],
        address = jsonWorkSite[AppConstants.ADDRESS],
        status = jsonWorkSite[AppConstants.STATUS],
        startAt = jsonWorkSite[AppConstants.START_AT],
        endAt = jsonWorkSite[AppConstants.END_AT],
        createdAt = jsonWorkSite[AppConstants.CREATED_AT],
        updatedAt = jsonWorkSite[AppConstants.UPDATED_AT];
}
