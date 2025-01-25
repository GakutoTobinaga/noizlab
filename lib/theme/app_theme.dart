import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // ライトモードのテーマ
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.transparent, // 背景はグラデーションで設定
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontFamily: 'MPlus1p', // フォントファミリーを指定
        color: LightColors.royalBlue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'MPlus1p', // フォントファミリーを指定
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
      headlineSmall: TextStyle(
        fontFamily: 'MPlus1p', // フォントファミリーを指定
        color: DarkColors.lavender,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'MPlus1p', // フォントファミリーを指定
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
