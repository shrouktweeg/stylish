import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService{
  final SharedPreferences _sharedPreferences;

  SharedPrefService(this._sharedPreferences);
static const isLoggedInKey="is_logged_in";
Future<void>setLoggedIn(bool value)async{
  await _sharedPreferences.setBool(isLoggedInKey, value);
}
bool getLoggedIn(){
  return _sharedPreferences.getBool(isLoggedInKey)??false;
}
Future<void>clearAuthData()async{
 await _sharedPreferences.remove(isLoggedInKey);
}

}