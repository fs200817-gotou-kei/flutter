import 'package:flutter/material.dart';
import 'package:untitled2/src/constants/app_constants.dart';

class ConnectionStateValidate {
  static bool isOk(String statesCode) {
    return statesCode == AppConstants.SUCCESS;
  }

  static bool isNotFound(String statusCode) {
    return statusCode == AppConstants.NOT_FOUND;
  }
}
