import 'package:flutter/material.dart';
import 'package:untitled2/src/constants/app_constants.dart';
import 'package:untitled2/src/model/entity/work_site/work_site.dart';
import 'package:untitled2/src/ui/component/work_site_list_view.dart';
import 'package:untitled2/src/util/connection_state_validate.dart';
import 'package:untitled2/src/util/messange_service.dart';

// APIから現場情報リストを取得しリストビューで表示する
class WorkSiteFutureBuilder extends StatefulWidget {
  final Function getApiFunction;
  const WorkSiteFutureBuilder(this.getApiFunction, {super.key});

  @override
  State<WorkSiteFutureBuilder> createState() => _WorkSiteFutureBuilderState();
}

class _WorkSiteFutureBuilderState extends State<WorkSiteFutureBuilder> {
  late Function getApiFunction;

  @override
  void initState() {
    super.initState();
    getApiFunction = widget.getApiFunction;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getApiFunction(),

        // TODO: このクラス内でいいかからメソッド切り出して整理したほうがよさそう
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            MessageService.show(snapshot.error.toString());
            return Center(
              child: Text(AppConstants.FUTURE_BUILDER_ERROR_MESSAGE +
                  snapshot.error.toString()),
            );
          }
          if (ConnectionStateValidate.isOk(snapshot.connectionState)) {
            MessageService.show(AppConstants.FUTURE_BUILDER_SUCCESS_MESSAGE);
            List<WorkSite> workSites = snapshot.data;
            return WorkSiteListView(workSites);
          }
          return const CircularProgressIndicator();
        });
  }
}
