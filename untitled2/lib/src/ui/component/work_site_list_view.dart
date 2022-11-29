import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled2/src/model/entity/work_site/work_site.dart';

class WorkSiteListView extends StatefulWidget {
  final List<WorkSite> workSites;
  const WorkSiteListView(this.workSites, {super.key});

  @override
  State<WorkSiteListView> createState() => _WorkSiteListViewState();
}

class _WorkSiteListViewState extends State<WorkSiteListView> {
  late List<WorkSite> workSites;

  @override
  void initState() {
    workSites = widget.workSites;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        Card(
          child: Text(workSites[index].name.toString()),
        );
      },
    );
  }
}
