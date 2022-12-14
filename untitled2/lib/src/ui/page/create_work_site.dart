import 'package:flutter/material.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/ui/component/normal_app_bar.dart';
import 'package:untitled2/src/ui/component/work_site_form.dart';

class CreateWorkSite extends StatelessWidget {
  const CreateWorkSite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          WorkSiteAppBar(title: AppConstants.CREATE_WORK_SITES_SCREEN_TITLE),
      body: WorkSiteForm(),
    );
  }
}
