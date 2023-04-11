import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget {
  VerticalText({super.key, required this.text, required this.style});

  String text;
  TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        text.length,
        (index) => Text(
          text[index],
          style: style,
        ),
      ),
    );
  }
}
