import 'package:flutter/material.dart';
import 'package:noizlab/theme/app_colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  // タップ時の処理
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(2), // 上部の角を丸くする
        topRight: Radius.circular(2),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2), // 半透明の白色
          border: Border.all(
            color: Colors.white.withOpacity(0.3), // 境界線（オプション）
            width: 1,
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex, // 現在選択されているタブ
          onTap: _onItemTapped, // タップ時の処理
          showSelectedLabels: false, // 選択されたラベルを非表示
          showUnselectedLabels: false, // 未選択のラベルも非表示
          elevation: 0, // シャドウ効果なし
          backgroundColor: Colors.transparent, // 背景を透明に設定
          selectedItemColor: DarkColors.ultramarine,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '', // ラベルは空文字列で指定
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
