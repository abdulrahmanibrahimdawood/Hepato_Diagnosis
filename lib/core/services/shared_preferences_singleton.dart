import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static SharedPreferences get instance => _instance;

  static setBool(String key, bool value) {
    _instance.setBool(key, value);
  }

  static getBool(String key) {
    return _instance.getBool(key) ?? false;
  }

  static setBoolLogin(String key, bool value) {
    _instance.setBool(key, value);
  }

  static getBoolLogin(String key) {
    return _instance.getBool(key) ?? false;
  }
}
