import 'package:flutter/material.dart';

class TemaProvider extends ChangeNotifier {
  ThemeData temaactual;

  TemaProvider({required bool modotema})
      : temaactual = modotema ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    temaactual = ThemeData.light();
    notifyListeners();
  }

  setDarkmode() {
    temaactual = ThemeData.dark();
    notifyListeners();
  }
}
