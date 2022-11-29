import 'package:flutter/material.dart';
import 'package:untitled2/src/constants/app_constants.dart';

class ConnectionStateValidate {
  static bool isOk(ConnectionState state) {
    return state == AppConstants.SUCCESS;
  }

  static bool isNotFound(String statusCode) {
    return statusCode == AppConstants.NOT_FOUND;
  }
}
