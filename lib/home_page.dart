import 'package:flutter/material.dart';

class CalculatorMaterialPage extends StatelessWidget {
  const CalculatorMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 116, 131),
      body: Stack(
        children: [
          Positioned(
            right: 10,
            top: 200,
            child: Text(
              textAlign: TextAlign.right,
              '0',
              style: TextStyle(
                fontSize: 70,
                color: const Color.fromARGB(255, 232, 231, 231),
              ),
            ),
          ),

          // Making a Divide button
          Positioned(right: 10, top: 400, child: CalculatorButton(text: '÷')),

          // Making a +/- button
          Positioned(
            right: 110,
            top: 400,
            child: CalculatorButton(text: '+/−'),
          ),

          // Making a back button
          Positioned(
            right: 210,
            top: 400,
            child: SizedBox(
              width: 90,
              height: 90,
              child: IconButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: LinearBorder(),
                ),
                icon: Icon(
                  Icons.backspace_outlined,
                  color: Color.fromARGB(247, 245, 245, 246),
                ),
              ),
            ),
          ),

          // Making a AC button
          Positioned(right: 310, top: 400, child: CalculatorButton(text: 'AC')),

          // Making multiplication button
          Positioned(right: 10, top: 500, child: CalculatorButton(text: '×')),

          // Making a button of 9
          Positioned(right: 110, top: 500, child: CalculatorButton(text: '9')),

          // Making a 8 button
          Positioned(right: 210, top: 500, child: CalculatorButton(text: '8')),

          // Making a 7 button
          Positioned(right: 310, top: 500, child: CalculatorButton(text: '7')),

          // Making a - button
          Positioned(right: 10, top: 600, child: CalculatorButton(text: '−')),

          // Making a 6 button
          Positioned(right: 110, top: 600, child: CalculatorButton(text: '6')),

          // Making a 5 button
          Positioned(right: 210, top: 600, child: CalculatorButton(text: '5')),

          // Making a 4 button
          Positioned(right: 310, top: 600, child: CalculatorButton(text: '4')),

          // Making a + button
          Positioned(right: 10, top: 700, child: CalculatorButton(text: '+')),

          // Making a 3 button
          Positioned(right: 110, top: 700, child: CalculatorButton(text: '3')),

          // Making a 2 button
          Positioned(right: 210, top: 700, child: CalculatorButton(text: '2')),

          // Making a 1 button
          Positioned(right: 310, top: 700, child: CalculatorButton(text: '1')),

          // Making a = button
          Positioned(right: 10, top: 800, child: CalculatorButton(text: '=')),

          // Making a decimal button
          Positioned(right: 110, top: 800, child: CalculatorButton(text: '.')),

          // Making a 0 button
          Positioned(right: 210, top: 800, child: CalculatorButton(text: '0')),

          //making a percentage button
          Positioned(right: 310, top: 800, child: CalculatorButton(text: '%')),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  const CalculatorButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          shape: LinearBorder(),
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
