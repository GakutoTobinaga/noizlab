import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class GradientBackgroundScreen extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const GradientBackgroundScreen({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noiz lab PoC'),
        actions: [
          Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
          Switch(
            value: isDarkMode,
            onChanged: (_) => onToggleTheme(),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:
            AppTheme.getBackgroundGradient(isDarkMode), // グラデーション背景を適用
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Gradient!',
                style: isDarkMode
                    ? AppTheme.darkTheme.textTheme.headlineSmall
                    : AppTheme.lightTheme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 20),
              Text(
                'Switch between Light and Dark mode!',
                style: isDarkMode
                    ? AppTheme.darkTheme.textTheme.bodyLarge
                    : AppTheme.lightTheme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
