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
  final int defaultItemCount = 0;

  @override
  void initState() {
    super.initState();
    workSites = widget.workSites;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: workSites == null ? defaultItemCount : workSites!.length,
      itemBuilder: (BuildContext context, int index) {
        WorkSite worksite = workSites == null ? WorkSite() : workSites![index];
        return Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Text(worksite.name.toString()),
                    Text(worksite.staffName.toString()),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
