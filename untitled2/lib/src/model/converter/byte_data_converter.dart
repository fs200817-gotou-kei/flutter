import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

// freezed機能を使用するときにByteData型だとデフォでconvertできないため実装
class ByteDataConverter implements JsonConverter<ByteData, ByteData> {
  const ByteDataConverter();

  @override
  ByteData fromJson(ByteData value) {
    return value;
  }

  @override
  ByteData toJson(ByteData value) {
    return value;
  }
}
