import 'dart:convert';

import 'package:http/http.dart';

// jsonとdartオブジェクト型へのencode, decodeを行うクラス
class TypeConverter {
  static List<dynamic> jsonToObject(response) {
    final data = json.decode(response);
    return List<dynamic>.from(data.map((item) => item.fromJson(item)));
  }
}
