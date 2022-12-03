import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/my_app.dart';

void main() {
  showStartMessage();
  runApp(const MyApp());
}

void showStartMessage() {
  final logger = Logger();
  if (AppConstants.IS_DEBUG) return logger.d(AppConstants.DEBUG_START_MESSAGE);
  logger.d(AppConstants.RELEASE_START_MESSAGE);
}
