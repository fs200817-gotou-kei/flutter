import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

// freezed機能を使用するときにByteData型だとデフォでconvertできないため実装
//* ↓<>内は左が変換先の型、右が返還前の型っぽい(jsonだから基本右はStringってことでよさそう)
class ByteDataConverter implements JsonConverter<ByteData, ByteData> {
  const ByteDataConverter();

  // TODO:
  @override
  ByteData fromJson(ByteData value) {
    return value;
  }

  @override
  ByteData toJson(ByteData value) {
    return value;
  }
}
