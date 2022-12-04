import 'package:flutter/material.dart';
import 'package:untitled2/src/model/work_site.dart';

class WorkSiteListView extends StatefulWidget {
  final List<WorkSite>? workSites;
  const WorkSiteListView(this.workSites, {super.key});

  @override
  State<WorkSiteListView> createState() => _WorkSiteListViewState();
}

class _WorkSiteListViewState extends State<WorkSiteListView> {
  late List<WorkSite>? workSites;

  @override
  void initState() {
    super.initState();
    workSites = widget.workSites;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: workSites == null ? 0 : workSites!.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card(
              child:
                  Text(workSites == null ? "" : workSites![index].toString()),
            ),
          ],
        );
      },
    );
  }
}
