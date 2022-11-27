import 'package:flutter/foundation.dart';

// 現場情報のモデルクラス
class WorkSite {
  int? id;
  String? name;
  String? subName;
  String? type;
  String? staffName;

  // TODO: 型はこれでいいのか
  ByteData? photo;

  String? address;
  String? status;
  DateTime? startAt;
  DateTime? endAt;
  DateTime? createdAt;
  DateTime? updatedAt;

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
}
