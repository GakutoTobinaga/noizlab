import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // ライトモードのテーマ
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.transparent, // 背景はグラデーションで設定
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: DarkColors.ultramarine,
        fontSize: 34,
        fontFamily: "NotoSansJP",
        fontWeight: FontWeight.w900,
      ),
      headlineSmall: TextStyle(
        color: LightColors.royalBlue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: LightColors.portage,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  // ダークモードのテーマ
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.transparent, // 背景はグラデーションで設定
    textTheme: const TextTheme(
        headlineLarge: TextStyle(
        color: LightColors.malibu,
        fontSize: 34,
        fontFamily: "NotoSansJP",
        fontWeight: FontWeight.w900,
      ),
      headlineSmall: TextStyle(
        color: DarkColors.lavender,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: DarkColors.persianBlue,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  // グラデーション背景の取得
  static BoxDecoration getBackgroundGradient(bool isDarkMode) {
    return BoxDecoration(
      gradient:
          isDarkMode ? DarkGradients.linearGradient : LightGradients.linearGradient,
    );
  }
}
