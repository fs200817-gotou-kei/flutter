import 'dart:convert';

class TypeConverter {
  static List<dynamic> jsonToObject(response) {
    String utfJsonData = utf8.decode(response.bodyBytes);
    final data = json.decode(utfJsonData);
    return List<dynamic>.from(data.map((item) => item.fromJson(item)));
  }
}
