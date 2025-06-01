// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class _OTheme {
  static const _key = 'onestop_ui_theme';
  _OTheme() {
    init();
  }

  Brightness _currentTheme = Brightness.light;

  Brightness get currentTheme => _currentTheme;

  void setTheme(Brightness theme) async {
    _currentTheme = theme;
    final box = GetStorage();
    switch (theme) {
      case Brightness.light:
        await box.write(_key, 'light');
        break;
      case Brightness.dark:
        await box.write(_key, 'dark');
        break;
    }
  }

  Future<void> init() async {
    final box = GetStorage();
    final theme = await box.read(_key);
    _currentTheme = _fromString(theme);
  }

  Brightness _fromString(String? theme) {
    switch (theme) {
      case 'light':
        return Brightness.light;
      default:
        return Brightness.dark;
    }
  }
}

final OTheme = _OTheme();
