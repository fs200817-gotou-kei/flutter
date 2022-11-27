import 'package:flutter/material.dart';
import 'package:untitled2/src/ui/screen_frame/common_app_bar.dart';

class AllWorkSite extends StatelessWidget {
  const AllWorkSite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: '現場情報一覧'),
      body: Container(),
    );
  }
}
