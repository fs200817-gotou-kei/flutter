import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../component/work_site_app_bar.dart';

class WorkSiteContent extends StatefulWidget {
  const WorkSiteContent({super.key});

  @override
  State<WorkSiteContent> createState() => _WorkSiteContentState();
}

class _WorkSiteContentState extends State<WorkSiteContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const WorkSiteAppBar(),
        body: Container(
          child: Column(children: [
            getWorkSiteContent(),
            getWorkSiteContent(),
            getWorkSiteContent(),
            getWorkSiteContent(),
            getWorkSiteContent(),
            getWorkSiteContent(),
            getWorkSiteContent(),
          ]),
        ));
  }

  Widget getWorkSiteContent() {
    return Container();
  }
}
