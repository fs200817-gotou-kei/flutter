import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/my_app.dart';

// TODO: 例外処理がまだあまり気がするから例外に観点を絞ってチェック
// アプリ起動
void main() {
  showStartMessage();
  runApp(const MyApp());
}

void showStartMessage() {
  final logger = Logger();
  if (AppConstants.IS_DEBUG) return logger.d(AppConstants.DEBUG_START_MESSAGE);
  logger.d(AppConstants.RELEASE_START_MESSAGE);
}
