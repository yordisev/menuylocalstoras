import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {
  static late SharedPreferences _prefe;
  static String _nombre = '';
  static bool _modooscuro = false;
  static int _genero = 1;

  static Future init() async {
    _prefe = await SharedPreferences.getInstance();
  }

  static String get nombre {
    return _prefe.getString('nombre') ?? _nombre;
  }

  static set nombre(String name) {
    _nombre = name;
    _prefe.setString('nombre', name);
  }

  static bool get modooscuro {
    return _prefe.getBool('modooscuro') ?? _modooscuro;
  }

  static set modooscuro(bool value) {
    _modooscuro = value;
    _prefe.setBool('modooscuro', value);
  }

  static int get genero {
    return _prefe.getInt('genero') ?? _genero;
  }

  static set genero(int value) {
    _genero = value;
    _prefe.setInt('genero', value);
  }
}
