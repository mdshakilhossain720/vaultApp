
import 'package:shared_preferences/shared_preferences.dart';

enum SetType{
  int,
  double,
  String,
  bool,
}

class SharedServices{
  Future setData(SetType type, String key,dynamic value) async {
    final pref=await SharedPreferences.getInstance();
    type==SetType.String?pref.setString(key, value)
        : type == SetType.int?pref.setInt(key, value)
        :type == SetType.bool?pref.setBool(key, value)
        :type ==SetType.double?pref.setDouble(key, value)
        :null;
    print("Stored in data key ${key}");
  }

  Future getData(SetType type,String key,) async {
    final pref=await SharedPreferences.getInstance();
   dynamic data= type==SetType.String?pref.getString(key)
    : type==SetType.double?pref.getDouble(key)
        :type==SetType.bool?pref.getBool(key)
        :type==SetType.int?pref.getInt(key)
        :null;
   print('key $key data $data');
   return data;
  }

}