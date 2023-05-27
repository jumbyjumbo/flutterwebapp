import 'package:flutter/material.dart';

enum AppTheme { light, dark }

class ThemeProvider extends ChangeNotifier {
  ThemeProvider(this._themeMode);
  ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
