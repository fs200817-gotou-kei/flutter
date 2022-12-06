import 'package:flutter/material.dart';
import 'package:untitled2/src/constant/app_constants.dart';

class WorkSiteForm extends StatefulWidget {
  const WorkSiteForm({super.key});

  @override
  State<WorkSiteForm> createState() => _WorkSiteFormState();
}

class _WorkSiteFormState extends State<WorkSiteForm> {
  final _formKey = GlobalKey<FormState>();
  String _type = "";

  void _handleRadio(String? e) => setState(() {
        _type = e!;
      });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        Text(AppConstants.JA_NAME),
        TextFormField(
          decoration:
              const InputDecoration(labelText: AppConstants.NAME_HINT_TEXT),
        ),
        Text(AppConstants.JA_SUB_NAME),
        TextFormField(
          decoration:
              const InputDecoration(labelText: AppConstants.SUB_NAME_HINT_TEXT),
        ),
        Text(AppConstants.JA_TYPE),
        RadioListTile(
            title: Text("新築"),
            value: "1",
            groupValue: _type,
            onChanged: _handleRadio),
        RadioListTile(
            title: Text("施工中"),
            value: "2",
            groupValue: _type,
            onChanged: _handleRadio),
        RadioListTile(
            title: Text("その他"),
            value: "3",
            groupValue: _type,
            onChanged: _handleRadio),
        Text(AppConstants.JA_STAFF_NAME),
        TextFormField(
          decoration: const InputDecoration(
              labelText: AppConstants.STAFF_NAME_HINT_TEXT),
        ),
        Text(AppConstants.JA_ADRESS),
        TextFormField(
          decoration:
              const InputDecoration(labelText: AppConstants.ADRESS_HINT_TEXT),
        )
      ]),
    );
  }
}
