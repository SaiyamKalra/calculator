import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback? number;
  const CalculatorButton({super.key, required this.text, required this.number});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78,
      height: 78,
      child: TextButton(
        onPressed: number,
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(115, 64, 62, 62),
          shape: CircleBorder(),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(255, 232, 231, 231),
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
