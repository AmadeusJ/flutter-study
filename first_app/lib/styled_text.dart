import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}