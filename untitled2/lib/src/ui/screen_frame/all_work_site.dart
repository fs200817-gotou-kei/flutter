import 'package:flutter/material.dart';
import 'package:untitled2/src/ui/screen_frame/normal_app_bar.dart';

// 現場情報一覧を表示する画面
class AllWorkSite extends StatelessWidget {
  const AllWorkSite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NormalAppBar(title: '現場情報一覧'),
      body: Container(),
    );
  }
}
