// 現場情報のモデルクラス
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled2/src/model/converter/byte_data_converter.dart';

part 'work_site.freezed.dart';
part 'work_site.g.dart';

@freezed
class WorkSite with _$WorkSite {
  //* プロパティの数が多いため名前付きコンストラクタにして受け渡し時の引数順番ミスによる値の入れ間違いを防ぐ
  const factory WorkSite(
      {int? id,
      String? name,
      String? subName,
      String? type,
      String? staffName,
      @ByteDataConverter() ByteData? photo,
      String? address,
      String? status,
      DateTime? startAt,
      DateTime? endAt,
      DateTime? createdAt,
      DateTime? updatedAt}) = _WorkSite;

  factory WorkSite.fromJson(Map<String, dynamic> json) =>
      _$WorkSiteFromJson(json);
}
