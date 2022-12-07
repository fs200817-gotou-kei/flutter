import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/model/work_site.dart';
import 'package:untitled2/src/ui/component/work_site_list_view.dart';
import 'package:untitled2/src/util/connection_state_validate.dart';

// APIから現場情報リストを取得しリストビューで表示する
class WorkSiteFutureBuilder extends StatefulWidget {
  final Function getApiFunction;
  const WorkSiteFutureBuilder(this.getApiFunction, {super.key});

  @override
  State<WorkSiteFutureBuilder> createState() => _WorkSiteFutureBuilderState();
}

class _WorkSiteFutureBuilderState extends State<WorkSiteFutureBuilder> {
  late Function getApiFunction;
  final Logger logger = Logger();

  @override
  void initState() {
    super.initState();

    // TODO: プロバイダーを使う
    getApiFunction = widget.getApiFunction;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getApiFunction(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            return showErrorView(snapshot.error.toString());
          }
          if (ConnectionStateValidate.isOk(snapshot.connectionState)) {
            return showListView(snapshot.data);
          }
          return const CircularProgressIndicator();
        });
  }

  Widget showErrorView(String errorMessage) {
    logger.e(errorMessage);
    return Center(
      child: Text(AppConstants.FUTURE_BUILDER_ERROR_MESSAGE + errorMessage),
    );
  }

  Widget showListView(List<WorkSite> workSites) {
    logger.d(AppConstants.FUTURE_BUILDER_SUCCESS_MESSAGE);
    // TODO: 値がある前提になっている
    logger.d(workSites[0].name);
    return WorkSiteListView(workSites);
  }
}
