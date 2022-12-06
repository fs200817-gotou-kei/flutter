import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/ui/component/normal_app_bar.dart';
import 'package:untitled2/src/ui/component/work_site_future_builder.dart';
import 'package:untitled2/src/service/work_site_api_service.dart';
import 'package:untitled2/src/ui/page/create_work_site.dart';

// 現場情報一覧を表示する画面
class AllWorkSite extends StatelessWidget {
  AllWorkSite({super.key});
  final WorkSiteApiService apiService = WorkSiteApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const NormalAppBar(title: AppConstants.ALL_WORK_SITES_SCREEN_TITLE),
      // TODO: なんか名前微妙
      body: WorkSiteFutureBuilder(apiService.findAllWorkSites),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // TODO: もう少し詳しくどういう処理しているか理解
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateWorkSite()));
        },
      ),
    );
  }
}
