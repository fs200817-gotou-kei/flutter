import 'dart:convert';

import 'package:flutter/foundation.dart';

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

  WorkSite.fromJson(Map<String, dynamic> jsonData)
      : id = jsonData['id'],
        name = jsonData['name'],
        subName = jsonData['subName'],
        type = jsonData['type'],
        staffName = jsonData['staffName'],
        photo = jsonData['photo'],
        address = jsonData['address'],
        status = jsonData['status'],
        startAt = jsonData['startAt'],
        endAt = jsonData['endAt'],
        createdAt = jsonData['createdAt'],
        updatedAt = jsonData['updatedAt'];
}
