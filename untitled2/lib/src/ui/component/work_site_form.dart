import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled2/src/constant/app_constants.dart';

class WorkSiteForm extends StatefulWidget {
  const WorkSiteForm({super.key});

  @override
  State<WorkSiteForm> createState() => _WorkSiteFormState();
}

class _WorkSiteFormState extends State<WorkSiteForm> {
  final _formKey = GlobalKey<FormState>();
  // TODO: textfieldのcontrollerってここで管理するの微妙な気がする
  String _type = "";
  String _status = "";
  final TextEditingController _startAt = TextEditingController();

  // TODO: ラジオボタンの↓昨日はきれいな形でも共通化を目指す(引数でcontroller渡すのは気持ち悪い)
  void _handleTypeRadio(String? e) => setState(() {
        _type = e!;
      });
  void _handleStatusRadio(String? e) => setState(() {
        _status = e!;
      });

// TODO: なんか結構でかくなってしまったから部品化とかできそう(Widget切り出す)
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(AppConstants.FORM_MARGIN),
        padding: const EdgeInsets.all(AppConstants.FORM_PADDING),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 240, 234, 234)),
            borderRadius: BorderRadius.circular(5)),
        child: Form(
          key: _formKey,
          child: Column(children: [
            const Text(AppConstants.JA_NAME),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: AppConstants.NAME_HINT_TEXT),
            ),
            const Text(AppConstants.JA_SUB_NAME),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: AppConstants.SUB_NAME_HINT_TEXT),
            ),
            const Text(AppConstants.JA_TYPE),
            RadioListTile(
                // TODO: ↓の値はdbの設計をリレーションとしたタイミングでdbの値をとるようにするから今はべた書きでOK
                // TODO: valueはworksiteインスタンスから取得するようにする
                title: const Text("新築"),
                value: "1",
                // groupValueは共通のラジオグループということを認識させるためのkey
                groupValue: _type,
                onChanged: _handleTypeRadio),
            RadioListTile(
                title: const Text("施工中"),
                value: "2",
                groupValue: _type,
                onChanged: _handleTypeRadio),
            RadioListTile(
                title: const Text("その他"),
                value: "3",
                groupValue: _type,
                onChanged: _handleTypeRadio),
            const Text(AppConstants.JA_STAFF_NAME),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: AppConstants.STAFF_NAME_HINT_TEXT),
            ),
            const Text(AppConstants.JA_ADRESS),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: AppConstants.ADRESS_HINT_TEXT),
            ),
            const Text(AppConstants.JA_STATUS),
            RadioListTile(
                title: const Text("1:未着手"),
                value: "1",
                groupValue: _status,
                onChanged: _handleStatusRadio),
            RadioListTile(
                title: const Text("2:進行中"),
                value: "2",
                groupValue: _status,
                onChanged: _handleStatusRadio),
            RadioListTile(
                title: const Text("保留"),
                value: "3",
                groupValue: _status,
                onChanged: _handleStatusRadio),
            RadioListTile(
                title: const Text("4:保留"),
                value: "4",
                groupValue: _status,
                onChanged: _handleStatusRadio),

            // TODO: textfield使ってのdatepickerはしっかり理解しておく(ロジック等を)
            TextField(
              controller: _startAt,
              readOnly: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "日付"),
              onTap: () async {
                DateTime initDate = DateTime.now();
                try {
                  initDate = DateFormat('yyyy/MM/dd').parse(_startAt.text);
                } catch (_) {}

                DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: initDate,
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now().add(const Duration(days: 365)));

                //* controllerであるstartAtに上の選択したpickedをいれればあとは自動で更新してくれる
                String? formatDate;
                try {
                  formatDate = DateFormat('yyyy/MM/dd').format(picked!);
                } catch (_) {}
                if (formatDate != null) {
                  _startAt.text = formatDate;
                }
              },
            )
          ]),
        ),
      ),
    );
  }

  Widget CustomRadioListTile(String title, String value, groupValue){
    return RadioListTile(title: Text(title),value: value, groupValue: groupValue, onChanged: _handleStatusRadio)
  }
}
