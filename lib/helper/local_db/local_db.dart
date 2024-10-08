import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class DBHelper {
  Future<String> getToken() async {
    var users = Hive.box(
      'users',
    );
    // Logger().e("dd");
    if (users.get('token') == null) {
      debugPrint("hive ");
    } else {
      debugPrint("hive  ${users.get('token')}");
    }
    return users.get('token');
  }

  Future<String> getUserId() async {
    var users = Hive.box(
      'users',
    );
    // Logger().e("dd");
    if (users.get('id') == null) {
      debugPrint("hive ");
    } else {
      debugPrint("hive >>>>>>>>> ${users.get('id')}");
    }
    return users.get('id');
  }
}
