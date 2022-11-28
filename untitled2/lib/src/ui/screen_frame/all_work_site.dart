import 'package:flutter/material.dart';
import 'package:untitled2/src/constants/app_constants.dart';
import 'package:untitled2/src/ui/component/normal_app_bar.dart';
import 'package:untitled2/src/util/work_site_api_service.dart';

// 現場情報一覧を表示する画面
class AllWorkSite extends StatelessWidget {
  const AllWorkSite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar(title: AppConstants.ALL_WORK_SITES_SCREEN_TITLE),
      body: Scaffold(
        FutureBuilder(
          future: WorkSiteApiService.findAllWorkSite(),
          builder:(context, (context, snapshot){
            
          } 
          ,)
      ),
    );
  }
}
