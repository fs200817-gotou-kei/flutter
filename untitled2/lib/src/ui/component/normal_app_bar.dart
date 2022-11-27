import 'package:flutter/material.dart';

// カスタムAppBarクラス
class NormalAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  const NormalAppBar({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title == null ? Text("No Title") : Text(title.toString()));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
