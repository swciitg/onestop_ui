import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  Future<void> toggleTheme({bool notify = true}) async {
    _currentTheme = _currentTheme == Brightness.light ? Brightness.dark : Brightness.light;
    await _saveTheme(_currentTheme);
    if (notify) notifyListeners();
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
      case 'dark':
        return Brightness.dark;
      default:
        return WidgetsBinding.instance.platformDispatcher.platformBrightness;
    }
  }

  ThemeData get lightThemeData => ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: OColor.gray100,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: OColor.gray100,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: OTextStyle.bodyLarge,
      bodyMedium: OTextStyle.bodyMedium,
      bodySmall: OTextStyle.bodySmall,
      displayLarge: OTextStyle.displayLarge,
      displayMedium: OTextStyle.displayMedium,
      displaySmall: OTextStyle.displaySmall,
      headlineLarge: OTextStyle.headingLarge,
      headlineMedium: OTextStyle.headingMedium,
      headlineSmall: OTextStyle.headingSmall,
      labelLarge: OTextStyle.labelLarge,
      labelMedium: OTextStyle.labelMedium,
      labelSmall: OTextStyle.labelSmall,
    ),
    fontFamily: OTextStyle.fontFamily,
  );

  ThemeData get darkThemeData => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: OColor.gray100,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: OColor.gray100,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: OTextStyle.bodyLarge,
      bodyMedium: OTextStyle.bodyMedium,
      bodySmall: OTextStyle.bodySmall,
      displayLarge: OTextStyle.displayLarge,
      displayMedium: OTextStyle.displayMedium,
      displaySmall: OTextStyle.displaySmall,
      headlineLarge: OTextStyle.headingLarge,
      headlineMedium: OTextStyle.headingMedium,
      headlineSmall: OTextStyle.headingSmall,
      labelLarge: OTextStyle.labelLarge,
      labelMedium: OTextStyle.labelMedium,
      labelSmall: OTextStyle.labelSmall,
    ),
    fontFamily: OTextStyle.fontFamily,
  );
}
