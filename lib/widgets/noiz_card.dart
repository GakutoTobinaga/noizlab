import 'package:flutter/material.dart';

class NoizCard extends StatelessWidget {
  final String title;
  final VoidCallback onPlayPause;
  final bool isPlaying;

  const NoizCard({
    super.key,
    required this.title,
    required this.onPlayPause,
    required this.isPlaying,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            IconButton(
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
              iconSize: 48,
              onPressed: onPlayPause,
            ),
          ],
        ),
      ),
    );
  }
}
