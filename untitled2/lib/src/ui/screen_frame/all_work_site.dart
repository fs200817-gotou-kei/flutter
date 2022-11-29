import 'package:flutter/material.dart';
import 'package:untitled2/src/constants/app_constants.dart';
import 'package:untitled2/src/ui/component/normal_app_bar.dart';
import 'package:untitled2/src/util/connection_state_validate.dart';
import 'package:untitled2/src/util/messange_service.dart';
import 'package:untitled2/src/util/work_site_api_service.dart';

// 現場情報一覧を表示する画面
class AllWorkSite extends StatelessWidget {
  AllWorkSite({super.key});
  final WorkSiteApiService workSiteApiService = WorkSiteApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NormalAppBar(title: AppConstants.ALL_WORK_SITES_SCREEN_TITLE),
        body: Scaffold(
          body: FutureBuilder(
              future: workSiteApiService.findAllWorkSites(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasError) {
                  MessageService.show(snapshot.error.toString());
                }
                if (ConnectionStateValidate.isOk(snapshot.connectionState)) {}
              }),
        ));
  }
}
