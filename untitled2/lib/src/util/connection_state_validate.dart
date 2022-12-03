import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:untitled2/src/constant/app_constants.dart';

// http通信を行った際のstatus判断を行うクラス
// TODO: StringではなくStatusCode型で判定したい
class ConnectionStateValidate {
  static bool isOk(ConnectionState status) {
    final Logger logger = Logger();
    bool result = status == AppConstants.SUCCESS;

    // TODO: ↓のmessageを1メソッドに集約させて呼び出したほうが見やすい
    logger.d(status.toString());
    logger.d(AppConstants.SUCCESS);
    logger.d(result.toString());
    return result;
  }

  static bool isNotFound(String statusCode) {
    return statusCode == AppConstants.NOT_FOUND;
  }
}
