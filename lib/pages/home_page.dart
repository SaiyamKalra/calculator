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
                    number: () {
                      setState(() {
                        userInput.text = '0';
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
                            userInput.text = userInput.text.substring(
                              0,
                              userInput.text.length - 1,
                            );
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(115, 64, 62, 62),
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
                    number: () {
                      setState(() {
                        if (userInput.text == '÷') {
                          userInput.text = '0';
                        } else {
                          temporary2 = temporary2 + temporary;
                          userInput.text += '÷';
                          lastOperator = '÷';
                          temporary = 0;
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
                    text: '7',
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 7;
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
                    text: '8',
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 8;
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
                    text: '9',
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 9;
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
                    text: '4',
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 4;
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
                    text: '5',
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 5;
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
                    text: '6',
                    number: () {
                      setState(() {
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
                    text: '1',
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 1;

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
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 2;
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
                    text: '3',
                    number: () {
                      setState(() {
                        temporary = temporary * 10 + 3;
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
                    number: () {
                      setState(() {
                        if (userInput.text == '0') {
                          userInput.text = '0';
                        } else {
                          temporary2 = temporary2 + temporary;
                          userInput.text += '+';
                          lastOperator = '+';
                          temporary = 0;
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
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    text: '0',
                    number: () {
                      setState(() {
                        if (userInput.text == '0.0' || userInput.text == '0') {
                          userInput.text = '0';
                        } else {
                          temporary = temporary * 10 + 0;
                          userInput.text += '0';
                        }
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
                    text: '.',
                    number: () {
                      setState(() {
                        if (userInput.text == '0') {
                          userInput.text = '.';
                        } else {
                          userInput.text += '.';
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalculatorButton(
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
                            } else {
                              userInput.text = 'Error';
                              return;
                            }
                          case '%':
                            result = (temporary2 / temporary) * 100;
                            temporary2 = result;
                            break;
                          default:
                            break;
                        }
                        userInput.text = temporary2.toString();
                        temporary = 0;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
