import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'widgets/app_logo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 初期状態はダークモード
  ThemeMode _themeMode = ThemeMode.light;

  // モード切り替え関数
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
      themeMode: _themeMode,// 現在のテーマモード
      home: Scaffold(
        appBar: AppBar(
          title: const AppLogo(),
        ),
        body: HomeScreen(
          isDarkMode: _themeMode == ThemeMode.dark,
          onToggleTheme: _toggleTheme,
        ),
      ),
    );
  }
}
