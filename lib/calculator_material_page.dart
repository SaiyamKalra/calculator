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

          Positioned(
            right: 10,
            top: 400,
            child: SizedBox(
              width: 90,
              height: 90,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  '÷',
                  style: TextStyle(
                    color: Color.fromARGB(255, 232, 231, 231),
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: LinearBorder(),
                ),
              ),
            ),
          ),

          Positioned(
            right: 110,
            top: 400,
            child: SizedBox(
              width: 90,
              height: 90,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  '+/-',
                  style: TextStyle(
                    color: Color.fromARGB(255, 232, 231, 231),
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: LinearBorder(),
                ),
              ),
            ),
          ),

          Positioned(
            right: 210,
            top: 400,
            child: SizedBox(
              width: 90,
              height: 90,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: Color.fromARGB(255, 232, 231, 231),
                    fontSize: 20,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: LinearBorder(),
                ),
              ),
            ),
          ),

          Positioned(
            right: 310,
            top: 400,
            child: SizedBox(
              width: 90,
              height: 90,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'AC',
                  style: TextStyle(
                    color: Color.fromARGB(255, 232, 231, 231),
                    fontSize: 30,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: LinearBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
