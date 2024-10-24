import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;
  final double target;
  final Color color;

  const ProgressBar({
    super.key,
    required this.progress,
    required this.target,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progress / target,
      valueColor: AlwaysStoppedAnimation<Color>(color),
      backgroundColor: Colors.grey[300],
    );
  }
}
