import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './components/button.dart';

class CalculatorMaterialPage extends StatefulWidget {
  const CalculatorMaterialPage({super.key});

  @override
  State<CalculatorMaterialPage> createState() => _CalculatorMaterialPageState();
}

class _CalculatorMaterialPageState extends State<CalculatorMaterialPage> {
  double result = 0;
  double temporary = 0;
  double temporary2 = 0;
  String firstOperator = '';
  String lastOperator = '';
  bool decimalMode = false;
  double decimalFactor = 0.1;
  late final TextEditingController userInput;

  @override
  void initState() {
    //(??)
    //init state function is used for the function whose value will come late to the question but we want to use it
    super.initState();
    userInput = TextEditingController(text: '0');
    if (kDebugMode) {
      print('rebuild');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 2, 116, 131),
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 36.0),
            child: SizedBox(
              height: 100,
              child: TextField(
                controller: userInput,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 70),
                showCursor: false,
                decoration: InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    text: 'AC',
                    backColor: Color.fromARGB(172, 92, 129, 188),
                    number: () {
                      setState(() {
                        userInput.text = '0';
                        temporary = 0;
                        temporary2 = 0;
                        decimalMode = false;
                        decimalFactor = 0.1;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 78,
                    height: 78,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (userInput.text == '0') {
                            userInput.text = '0';
                          } else {
                            if (userInput.text.endsWith('.')) {
                              decimalMode = false;
                              decimalFactor = 0.1;
                            }
                            userInput.text = userInput.text.substring(
                              0,
                              userInput.text.length - 1,
                            );
                            if (userInput.text.isEmpty) {
                              userInput.text = '0';
                            }
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(172, 92, 129, 188),
                        shape: CircleBorder(),
                      ),
                      icon: Icon(
                        Icons.backspace_outlined,
                        color: Color.fromARGB(247, 245, 245, 246),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(172, 92, 129, 188),
                    text: '+/–',
                    number: () {
                      setState(() {
                        if (userInput.text == '0') {
                          userInput.text = '-';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    text: '÷',
                    backColor: Color.fromARGB(172, 92, 129, 188),
                    number: () {
                      setState(() {
                        if (userInput.text == '÷') {
                          userInput.text = '0';
                        } else {
                          temporary2 = temporary2 + temporary;
                          userInput.text += '÷';
                          lastOperator = '÷';
                          temporary = 0;
                          decimalMode = false;
                          decimalFactor = 0.1;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '7',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (7 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 7;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '7';
                        } else {
                          userInput.text += '7';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '8',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (8 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 8;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '8';
                        } else {
                          userInput.text += '8';
                        }
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '9',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (9 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 9;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '9';
                        } else {
                          userInput.text += '9';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(172, 92, 129, 188),
                    text: '×',
                    number: () {
                      setState(() {
                        if (userInput.text == '0') {
                          userInput.text = '0';
                        } else {
                          temporary2 = temporary2 + temporary;
                          userInput.text += '×';
                          lastOperator = '×';
                          temporary = 0;
                          decimalMode = false;
                          decimalFactor = 0.1;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '4',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (4 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 4;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '4';
                        } else {
                          userInput.text += '4';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '5',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (5 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 5;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '5';
                        } else {
                          userInput.text += '5';
                        }
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '6',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (6 * decimalFactor);
                          decimalFactor *= 0.1;
                        }
                        temporary = temporary * 10 + 6;
                        if (userInput.text == '0') {
                          userInput.text = '6';
                        } else {
                          userInput.text += '6';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(172, 92, 129, 188),
                    text: '–',
                    number: () {
                      setState(() {
                        if (userInput.text == '0') {
                          userInput.text = '-';
                        } else {
                          temporary2 = temporary2 + temporary;
                          userInput.text += '-';
                          lastOperator = '-';
                          temporary = 0;
                          decimalMode = false;
                          decimalFactor = 0.1;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '1',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (1 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 1;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '1';
                        } else {
                          userInput.text += '1';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    text: '2',
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (2 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 2;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '2';
                        } else {
                          userInput.text += '2';
                        }
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '3',
                    number: () {
                      setState(() {
                        if (decimalMode) {
                          temporary = temporary + (8 * decimalFactor);
                          decimalFactor *= 0.1;
                        } else {
                          temporary = temporary * 10 + 3;
                        }
                        if (userInput.text == '0') {
                          userInput.text = '3';
                        } else {
                          userInput.text += '3';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    text: '+',
                    backColor: Color.fromARGB(172, 92, 129, 188),
                    number: () {
                      setState(() {
                        if (userInput.text == '0') {
                          userInput.text = '0';
                        } else {
                          temporary2 = temporary2 + temporary;
                          userInput.text += '+';
                          lastOperator = '+';
                          temporary = 0;
                          decimalMode = false;
                          decimalFactor = 0.1;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '%',
                    number: () {
                      setState(() {
                        if (userInput.text == '0') {
                          userInput.text = '0';
                        } else {
                          temporary2 = temporary2 + temporary;
                          userInput.text += '%';
                          lastOperator = '%';
                          temporary = 0;
                          decimalMode = false;
                          decimalFactor = 0.1;
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '0',
                    number: () {
                      setState(() {
                        if (userInput.text == '0.0' || userInput.text == '0') {
                          userInput.text = '0';
                        } else {
                          if (decimalMode) {
                            temporary = temporary * 10 + 0;
                            decimalFactor *= 0.1;
                          } else {
                            temporary = temporary * 10 + 0;
                          }
                          userInput.text += '0';
                        }
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(115, 64, 62, 62),
                    text: '.',
                    number: () {
                      setState(() {
                        if (!decimalMode) {
                          decimalMode = true;
                          if (userInput.text == '0') {
                            userInput.text = '0.';
                          } else {
                            userInput.text += '.';
                          }
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    backColor: Color.fromARGB(166, 238, 132, 40),
                    text: '=',
                    number: () {
                      setState(() {
                        switch (lastOperator) {
                          case '+':
                            result = temporary2 + temporary;
                            temporary2 = result;
                            break;
                          case '-':
                            result = temporary2 - temporary;
                            temporary2 = result;
                            break;
                          case '×':
                            result = temporary2 * temporary;
                            temporary2 = result;
                            break;
                          case '÷':
                            if (temporary != 0) {
                              result = temporary2 / temporary;
                              temporary2 = result;
                              break;
                            } else {
                              userInput.text = 'Error';
                              return;
                            }
                          case '%':
                            result = (temporary2 / temporary) * 100;
                            temporary2 = result;
                            break;
                        }
                        if (temporary2 == temporary2.toInt()) {
                          userInput.text = temporary2.toInt().toString();
                        } else {
                          userInput.text = temporary2.toString();
                        }
                        temporary = 0;
                        decimalMode = false;
                        decimalFactor = 0.1;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
