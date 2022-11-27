import 'package:flutter/material.dart';

// カスタムAppBarクラス
class NormalAppBar extends StatelessWidget with PreferredSizeWidget {
  final title;
  const NormalAppBar({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
