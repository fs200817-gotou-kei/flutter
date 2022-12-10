import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/my_app.dart';

// TODO: 例外処理がまだあまり気がするから例外に観点を絞ってチェック
// アプリ起動
void main() {
  final logger = Logger();
  logger.d(AppConstants.RELEASE_START_MESSAGE);
  runApp(const MyApp());
}
