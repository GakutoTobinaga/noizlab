import 'package:flutter/material.dart';
import 'widgets/gradient_background.dart'; // グラデーション背景ウィジェット
import 'theme/app_theme.dart'; // テーマ設定

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 初期状態はライトモード
  ThemeMode _themeMode = ThemeMode.light;

  // テーマを切り替える関数
  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme, // ライトテーマ
      darkTheme: AppTheme.darkTheme, // ダークテーマ
      themeMode: _themeMode, // 現在のテーマモードを適用
      home: GradientBackgroundScreen(
        isDarkMode: _themeMode == ThemeMode.dark,
        onToggleTheme: _toggleTheme, // ボタンでテーマを切り替え
      ),
    );
  }
}
