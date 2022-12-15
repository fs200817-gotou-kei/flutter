import 'package:flutter/material.dart';
import 'package:untitled2/src/constant/app_constants.dart';

// カスタムAppBarクラス
class WorkSiteAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  const WorkSiteAppBar({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title == null
            ? const Text(AppConstants.NO_TITLE_MESSEGE)
            : Text(title.toString()));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
