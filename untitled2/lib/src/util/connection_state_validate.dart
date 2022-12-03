import 'package:flutter/material.dart';
import 'package:untitled2/src/constants/app_constants.dart';
import 'package:untitled2/src/util/messange_service.dart';

// http通信を行った際のstatus判断を行うクラス
// TODO: StringではなくStatusCode型で判定したい
class ConnectionStateValidate {
  static bool isOk(String statusCode) {
    bool result = statusCode == AppConstants.SUCCESS;
    MessageService.show(statusCode.toString());
    MessageService.show(AppConstants.SUCCESS);
    MessageService.show(result.toString());
    return result;
  }

  static bool isNotFound(String statusCode) {
    return statusCode == AppConstants.NOT_FOUND;
  }
}
