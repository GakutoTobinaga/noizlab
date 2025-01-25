import 'package:flutter/material.dart';
import '../widgets/gradient_background.dart';

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const HomeScreen({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: GradientBackground(
      isDarkMode: isDarkMode, // グラデーション背景にモード情報を渡す
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 表示したい文字
            Text(
              '探す', // 表示する文字
              style: TextStyle(
                fontFamily: "MPlus1p",
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black, // テーマによる色の切り替え
              ),
            ),
            const SizedBox(height: 20), // 間隔を空ける
            ActionChip(
              avatar: Icon(isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
              label: Text(isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode'),
              onPressed: onToggleTheme, // モード切り替え関数を呼び出す
            ),
          ],
        ),
      ),
    ),
  );
}

}
