import 'package:flutter/material.dart';

class AppConstants {
// envファイルはパスワードとかAPI Keyなどみたいに隠したいやつを記載する
//* シンプルな定数は言語ファイル作ったほうがtypoが起こった際にコンパイルエラーとして検出されるからいい

// アプリのタイトル
  static const String APP_TITLE = "WorkSitesManageApp";

// デバッグモードかリリースモードか
  static const bool IS_DEBUG = true;

// 各画面のAppBarに表示するタイトル
  static const ALL_WORK_SITES_SCREEN_TITLE = "現場情報一覧";
  static const CREATE_WORK_SITES_SCREEN_TITLE = "現場情報一覧";
  static const CONTENT_WORK_SITES_SCREEN_TITLE = "現場情報一覧";
  static const EDIT_WORK_SITES_SCREEN_TITLE = "現場情報一覧";

// APIへの問い合わせURL一覧
  static const WORK_SITES_BASE_URL = "http://10.0.2.2:8080/api/v1/worksites";

// WorkSiteの英語パラメーター
  static const String ID = "id";
  static const String NAME = "name";
  static const String SUB_NAME = "subName";
  static const String TYPE = "type";
  static const String STAFF_NAME = "staffName";
  static const String PHOTO = "photo";
  static const String ADDRESS = "address";
  static const String STATUS = "status";
  static const String START_AT = "startAt";
  static const String END_AT = "endAt";
  static const String CREATED_AT = "createdAt";
  static const String UPDATED_AT = "updatedAt";

// WorkSiteの日本語パラメーター
  static const String JA_NAME = "現場名";
  static const String JA_SUB_NAME = "施工箇所";
  static const String JA_TYPE = "種別";
  static const String JA_STAFF_NAME = "担当者";
  static const String JA_PHOTO = "現場写真";
  static const String JA_ADRESS = "住所";
  static const String JA_STATUS = "ステータス";

  // TextFieldのplaceholder
  static const String NAME_HINT_TEXT = "現場名称を入力してください";
  static const String SUB_NAME_HINT_TEXT = "施工箇所を入力してください";
  static const String STAFF_NAME_HINT_TEXT = "担当者を入力してください";
  static const String PICTURE_HINT_TEXT = "写真が選択されていません";
  static const String ADRESS_HINT_TEXT = "住所をを入力してください";
  static const String START_AT_HINT_TEXT = "開始日（予定日）を入力してください";
  static const String END_AT_HINT_TEXT = "終了日（予定日）を入力してください";

  // http通信のStatusCode
  static const ConnectionState SUCCESS = ConnectionState.done;
  static const ConnectionState NOT_FOUND = ConnectionState.none;
  static const ConnectionState WAITING = ConnectionState.waiting;

  // メッセージ
  static const String NO_TITLE_MESSEGE = "No Title";
  static const String STATUS_CODE_MESSEGE = "StatusCode:";
  static const String FUTURE_BUILDER_ERROR_MESSAGE = "FutureBuilderでエラー発生 : ";
  static const String FUTURE_BUILDER_SUCCESS_MESSAGE =
      "FutureBuilderでデータ取得が完了いたしました。";
  static const String DEBUG_START_MESSAGE = "デバッグモードでアプリを開始します。";
  static const String RELEASE_START_MESSAGE = "リリースモードでアプリを開始します。";

  // decoration
  static const 

  // widgetのサイズ
  static const double FORM_MARGIN = 20;
  static const double FORM_PADDING = 5;
}
