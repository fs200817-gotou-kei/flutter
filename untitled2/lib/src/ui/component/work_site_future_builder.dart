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
    getApiFunction = widget.getApiFunction;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getApiFunction(),

        // TODO: このクラス内でいいかからメソッド切り出して整理したほうがよさそう
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            logger.e(snapshot.error.toString());
            return Center(
              child: Text(AppConstants.FUTURE_BUILDER_ERROR_MESSAGE +
                  snapshot.error.toString()),
            );
          }
          if (ConnectionStateValidate.isOk(snapshot.connectionState)) {
            logger.d(AppConstants.FUTURE_BUILDER_SUCCESS_MESSAGE);
            List<WorkSite>? workSites = snapshot.data;
            logger.d(snapshot.data);
            logger.d(snapshot.data);
            return WorkSiteListView(workSites);
          }
          return const CircularProgressIndicator();
        });
  }
}
