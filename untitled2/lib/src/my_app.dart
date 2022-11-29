import 'package:flutter/material.dart';
import 'package:untitled2/src/constants/app_constants.dart';
import 'package:untitled2/src/ui/screen_frame/all_work_site.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: AppConstants.IS_DEBUG,
        title: AppConstants.ALL_WORK_SITES_SCREEN_TITLE,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        // アプリ起動時ホーム画面として現場情報一覧画面を表示
        home: AllWorkSite());
  }
}
