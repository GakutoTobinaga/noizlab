import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
// import 'widgets/app_logo.dart';
import 'widgets/custom_bottom_nav_bar.dart';

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
      themeMode: _themeMode, // 現在のテーマモード
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // 背景グラデーション
              Container(
                decoration: AppTheme.getBackgroundGradient(_themeMode == ThemeMode.dark),
              ),
              Column(
                children: [
                  Expanded(
                    child: HomeScreen(
                      isDarkMode: _themeMode == ThemeMode.dark,
                      onToggleTheme: _toggleTheme,
                    ),
                  ),
                  const CustomBottomNavBar(), // カスタムナビゲーションバー
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
