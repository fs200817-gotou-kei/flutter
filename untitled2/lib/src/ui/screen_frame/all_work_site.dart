import 'package:flutter/material.dart';
import 'package:untitled2/src/ui/component/normal_app_bar.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// 現場情報一覧を表示する画面
class AllWorkSite extends StatelessWidget {
  const AllWorkSite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(
          title: dotenv.env['ALL_WORK_SITES_SCREEN_TITLE'].toString()),
      body: Container(),
    );
  }
}
