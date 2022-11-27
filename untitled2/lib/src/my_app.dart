import 'package:flutter/material.dart';
import 'package:untitled2/src/ui/screen_frame/all_work_site.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AllWorkSite());
  }
}
