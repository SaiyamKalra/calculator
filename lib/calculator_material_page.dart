import 'package:flutter/material.dart';

class CalculatorMaterialPage extends StatelessWidget {
  const CalculatorMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 200,
            child: Text(
              textAlign: TextAlign.right,
              '0',
              style: TextStyle(fontSize: 70),
            ),
          ),
        ],
      ),
    );
  }
}
