// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:onestop_ui/store/theme_store.dart';

class _OColor {
  bool get lightTheme => ThemeStore.instance.currentTheme == Brightness.light;
  //BW color
  Color get white => lightTheme ? Color(0xFFFFFFFF) : Color(0xFF262626);
  Color get black => lightTheme ? Color(0xFF000000) : Color(0xFFFDFDFC);
  // Green colors
  Color get green100 => lightTheme ? Color(0xFFDCEFE4) : Color(0xFF1B2921);
  Color get green200 => lightTheme ? Color(0xFFC9E3D4) : Color(0xFF7AEBA7);
  Color get green300 => lightTheme ? Color(0xFF52E08B) : Color(0xFF52E08B);
  Color get green400 => lightTheme ? Color(0xFF2FD06F) : Color(0xFF27D06F);
  Color get green500 => lightTheme ? Color(0xFF1AB056) : Color(0xFF14BD56);
  Color get green600 => lightTheme ? Color(0xFF148440) : Color(0xFF1AB056);
  Color get green700 => lightTheme ? Color(0xFF085E2A) : Color(0xFF085E2A);
  Color get green800 => lightTheme ? Color(0xFF003314) : Color(0xFF003314);

  // Blue colors (Accent)
  Color get blue100 => lightTheme ? Color(0xFFD6E6FF) : Color(0xFF012151);
  Color get blue200 => lightTheme ? Color(0xFFBDD7FF) : Color(0xFF80B2FF);
  Color get blue300 => lightTheme ? Color(0xFF4D9AFE) : Color(0xFF66A3FF);
  Color get blue400 => lightTheme ? Color(0xFF247BFF) : Color(0xFF4D93FF);
  Color get blue500 => lightTheme ? Color(0xFF005FF0) : Color(0xFF3887FF);
  Color get blue600 => lightTheme ? Color(0xFF004BBD) : Color(0xFF1A75FF);
  Color get blue700 => lightTheme ? Color(0xFF00378A) : Color(0xFF0065FF);
  Color get blue800 => lightTheme ? Color(0xFF002257) : Color(0xFF005BE5);

  // Gray colors (Neutrals)
  Color get gray100 => lightTheme ? Color(0xFFF4F5F5) : Color(0xFF1C1C1C);
  Color get gray200 => lightTheme ? Color(0xFFE9E9EA) : Color(0xFF323232);
  Color get gray300 => lightTheme ? Color(0xFFD5D5D7) : Color(0xFF454545);
  Color get gray400 => lightTheme ? Color(0xFFBABABF) : Color(0xFF535353);
  Color get gray500 => lightTheme ? Color(0xFF98999F) : Color(0xFF6F6F6F);
  Color get gray600 => lightTheme ? Color(0xFF6E6F77) : Color(0xFF9B9B9B);
  Color get gray700 => lightTheme ? Color(0xFF4C4D59) : Color(0xFFB2B3B8);
  Color get gray800 => lightTheme ? Color(0xFF232329) : Color(0xFFCDCDD1);

  // Semantic colors
  // Warning (Yellow)
  Color get yellow100 => lightTheme ? Color(0xFFF9ECD2) : Color(0xFF624204);
  Color get yellow200 => lightTheme ? Color(0xFFFBDB9D) : Color(0xFF926407);
  Color get yellow300 => lightTheme ? Color(0xFFF8CA6D) : Color(0xFFC38509);
  Color get yellow400 => lightTheme ? Color(0xFFF6B83C) : Color(0xFFF4A60B);
  Color get yellow500 => lightTheme ? Color(0xFFF4A60B) : Color(0xFFF6B83C);
  Color get yellow600 => lightTheme ? Color(0xFFC38509) : Color(0xFFF8CA6D);
  Color get yellow700 => lightTheme ? Color(0xFF926407) : Color(0xFFFBDB9D);
  Color get yellow800 => lightTheme ? Color(0xFF624204) : Color(0xFFFBDB9D);

  // Negative (Red)
  Color get red100 => lightTheme ? Color(0xFFFCD9DF) : Color(0xFF500613);
  Color get red200 => lightTheme ? Color(0xFFFFB8C4) : Color(0xFF800A1F);
  Color get red300 => lightTheme ? Color(0xFFF3637C) : Color(0xFFAF0D2A);
  Color get red400 => lightTheme ? Color(0xFFEF3354) : Color(0xFFDE1135);
  Color get red500 => lightTheme ? Color(0xFFDE1135) : Color(0xFFEF3354);
  Color get red600 => lightTheme ? Color(0xFFAF0D2A) : Color(0xFFF3637C);
  Color get red700 => lightTheme ? Color(0xFF800A1F) : Color(0xFFFFB8C4);
  Color get red800 => lightTheme ? Color(0xFF500613) : Color(0xFFFCD9DF);
}

final OColor = _OColor();
