// 現場情報のモデルクラス
import 'package:untitled2/src/constant/app_constants.dart';

class WorkSite {
  //* プロパティの数が多いため名前付きコンストラクタにして受け渡し時の引数順番ミスによる値の入れ間違いを防ぐ
  int? id;
  String? name;
  String? subName;
  String? type;
  String? staffName;
  String? photo;
  String? address;
  String? status;
  DateTime? startAt;
  DateTime? endAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  WorkSite(
      {this.id,
      this.name,
      this.subName,
      this.photo,
      this.type,
      this.staffName,
      this.address,
      this.status,
      this.startAt,
      this.endAt,
      this.createdAt,
      this.updatedAt});

  factory WorkSite.fromJson(Map<String, dynamic> json) {
    return WorkSite(
      id: json[AppConstants.ID] as int,
      name: json[AppConstants.NAME] as String,
      subName: json[AppConstants.SUB_NAME] as String,
      type: json[AppConstants.TYPE] as String,
      staffName: json[AppConstants.STAFF_NAME] as String,
      photo: json[AppConstants.PHOTO],
      address: json[AppConstants.ADDRESS] as String,
      status: json[AppConstants.STATUS] as String,
      startAt: DateTime.parse(json[AppConstants.START_AT]),
      endAt: DateTime.parse(json[AppConstants.END_AT]),
      createdAt: DateTime.parse(json[AppConstants.CREATED_AT]),
      updatedAt: DateTime.parse(json[AppConstants.UPDATED_AT]),
    );
  }
}
