import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onestop_ui/index.dart';

class ThemeStore extends ChangeNotifier {
  static const _key = 'onestop_ui_theme';
  static final ThemeStore _instance = ThemeStore._internal();
  static ThemeStore get instance => _instance;
  factory ThemeStore() => _instance;
  ThemeStore._internal();

  Brightness _currentTheme = Brightness.light;

  Brightness get currentTheme => _currentTheme;

  bool get isDarkMode => _currentTheme == Brightness.dark;
  bool get isLightMode => _currentTheme == Brightness.light;

  Future<void> initTheme() async {
    await GetStorage.init();
    final box = GetStorage();
    final theme = await box.read(_key);
    _currentTheme = _fromString(theme);
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _currentTheme = _currentTheme == Brightness.light ? Brightness.dark : Brightness.light;
    await _saveTheme(_currentTheme);
    notifyListeners();
  }

  Future<void> setTheme(Brightness theme) async {
    _currentTheme = theme;
    await _saveTheme(theme);
    notifyListeners();
  }

  Future<void> _saveTheme(Brightness theme) async {
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

  Brightness _fromString(String? theme) {
    switch (theme) {
      case 'light':
        return Brightness.light;
      default:
        return Brightness.dark;
    }
  }

  // Theme-aware colors that automatically update
  Color get backgroundColor => isDarkMode ? const Color(0xFF1C1C1E) : OColor.white;
  Color get cardColor => isDarkMode ? const Color(0xFF2C2C2E) : OColor.white;
  Color get surfaceColor => isDarkMode ? const Color(0xFF2C2C2E) : OColor.gray100;
  Color get textColor => isDarkMode ? OColor.white : OColor.gray800;
  Color get subtitleColor => isDarkMode ? const Color(0xFF8E8E93) : OColor.gray600;
  Color get borderColor => isDarkMode ? const Color(0xFF3A3A3C) : OColor.gray200;
  Color get iconColor => isDarkMode ? OColor.white : OColor.gray800;
}
