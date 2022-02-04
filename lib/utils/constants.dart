import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  Future prefs() async {
 final SharedPreferences _preferences = await  SharedPreferences.getInstance();

}
}