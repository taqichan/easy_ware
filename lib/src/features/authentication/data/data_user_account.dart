// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:easy_ware/src/features/authentication/domain/user_account.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataUserAccount {
  static const String userAccountKey = 'userAccountKey';

  static getDataUserAccountFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.getString(userAccountKey) ?? '';
    return jsonDecode(result);
  }

  static void setDataUserAccountToStorage(UserAccount userAccount) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(userAccountKey, jsonEncode(userAccount.toMap()));
  }
}

class UserDataRegister {
  static const String userAccountRegisterKey = 'userAccountRegisterKey';

  static Future<bool> getUserAccountRegister() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userAccountRegisterKey) ?? false;
  }

  static void setUserAccountRegister(bool isRegister) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(userAccountRegisterKey, isRegister);
  }

  static void userAccountLogout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(userAccountRegisterKey);
  }

  static getDataUserAccountFromStorage() {}

  static getUserAccountFromStorage() {}
}
