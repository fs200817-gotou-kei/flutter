import 'package:flutter/material.dart';

class ConnectionStateValidate {
  static bool isOk(ConnectionState state) {
    return state == ConnectionState.done;
  }
}
