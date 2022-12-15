import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled2/src/constant/app_constants.dart';
import 'package:untitled2/src/model/work_site.dart';

// 現場情報作成、編集画面で使用するフォームUI
class WorkSiteForm extends StatefulWidget {
  const WorkSiteForm({super.key});

  @override
  State<WorkSiteForm> createState() => _WorkSiteFormState();
}

  final _formKey = GlobalKey<FormState>();
class _WorkSiteFormState extends State<WorkSiteForm> {
  late List<WorkSite> workSites;
  // TODO: List<WorkSite> を受け取る必要がある
  // TODO: textfieldのcontrollerってここで管理するの微妙な気がする
  // → Provider？
  // enumを別ファイルに分けてそのクラスを持ちたい
  // modelとはまた別にしたい
  // enumを公式ではradioの値が変わるのにenum使っているけどいいのか、わかりづらくないか
  // https://api.flutter.dev/flutter/material/Radio-class.html
  String _type = "";
  String _status = "";
  final TextEditingController _startAt = TextEditingController();

// TODO: なんか結構でかくなってしまったから部品化とかできそう(Widget切り出す)
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // TODO: cssみたいなものだから分けるという考えは絶対あり
        // decorationとか難行にもなる奴は分けてもいいけどそれ以外微妙
        margin: const EdgeInsets.all(AppConstants.FORM_MARGIN),
        padding: const EdgeInsets.all(AppConstants.FORM_PADDING),
        // TODO: こういう色とかってどう管理していくか
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 240, 234, 234)),
            borderRadius: BorderRadius.circular(5)),
        child: Form(
          key: _formKey,
          child: Column(children: [
            // labelからformfieldをワンセットでメソッドで切り出し
            // ラジオは引数をオブジェクト型でグループ化してループでラジオボタン作っていくほうがいいかも
            // これができれば結構きれいにbuild内はメタ情報のみに絞れそう
            getTextForm(AppConstants.JA_NAME, AppConstants.NAME_HINT_TEXT),
            getTextForm(
                AppConstants.JA_SUB_NAME, AppConstants.SUB_NAME_HINT_TEXT),
            // TODO: ↓の値はdbの設計をリレーションとしたタイミングでdbの値をとるようにするから今はべた書きでOK
            // TODO: valueはworksiteインスタンスから取得するようにする
            //* groupValueは共通のラジオグループということを認識させるためのkey
            getRadioListTiles(
                AppConstants.JA_TYPE, workSites, _type, _handleTypeRadio),
            getTextForm(
                AppConstants.JA_STAFF_NAME, AppConstants.STAFF_NAME_HINT_TEXT),
            getTextForm(AppConstants.JA_ADRESS, AppConstants.ADRESS_HINT_TEXT),
            getRadioListTiles(
                AppConstants.JA_STATUS, workSites, _status, _handleStatusRadio),
            // TODO: textfield使ってのdatepickerはしっかり理解しておく(ロジック等を)
            getDatePickerTextForm(),
            getDatePickerTextForm(),
          ]),
        ),
      ),
    );
  }

  Widget getRadioListTiles(String title, List<WorkSite> workSites,
      String property, Function handler) {
    return (Column(
      children: [
        Text(title),
        for (WorkSite workSite in workSites) ...{
          Text(workSite.status.toString())
        }
      ],
    ));
  }

  Widget getTextForm(String columnTitle, String hintText) {
    return (Column(
      children: [
        Text(columnTitle),
        TextFormField(
          decoration: InputDecoration(labelText: hintText),
        ),
      ],
    ));
  }

  Widget getDatePickerTextForm() {
    return TextField(
      controller: _startAt,
      readOnly: true,
      decoration:
          const InputDecoration(border: OutlineInputBorder(), hintText: "日付"),
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
    );
  }

  // TODO: ラジオボタンの↓昨日はきれいな形でも共通化を目指す(引数でcontroller渡すのは気持ち悪い)
  void _handleTypeRadio(String? e) => setState(() {
        _type = e!;
      });
  void _handleStatusRadio(String? e) => setState(() {
        _status = e!;
      });
}
