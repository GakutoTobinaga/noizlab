import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class GradientBackground extends StatelessWidget {
  final bool isDarkMode;
  final Widget child; // 背景上に配置する子ウィジェット

  const GradientBackground({
    super.key,
    required this.isDarkMode,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.getBackgroundGradient(isDarkMode), // グラデーション設定
      child: child, // 子ウィジェットを配置
    );
  }
}
