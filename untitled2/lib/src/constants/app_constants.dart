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

// WorkSiteのパラメーター
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

// http通信のStatusCode
  static const String SUCCESS = "ConnectionState.done";
  static const String NOT_FOUND = "404";

  // メッセージ
  static const NO_TITLE_MESSEGE = "No Title";
  static const STATUS_CODE_MESSEGE = "StatusCode:";
  static const FUTURE_BUILDER_ERROR_MESSAGE = "FutureBuilderでエラー発生 : ";
  static const FUTURE_BUILDER_SUCCESS_MESSAGE = "FutureBuilderでデータ取得が完了いたしました。";
}
