import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator/components/button.dart';

class HomeScreen extends StatefulWidget {

   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static var uerInput = '';
  static var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 160,
                        ),
                        Text(
                uerInput.toString(),
                style: const TextStyle(fontSize: 40, color: Colors.white),
              ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          answer.toString(),
                          style: const TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ],
                    ),
                  )),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        MyButton(
                          color: Colors.grey,
                          text: 'AC',
                          onPress: () {
                            setState(() {
                              uerInput = '';
                              answer = '';
                            });
                          },
                          textColor: Colors.black,
                        ),
                        MyButton(
                          color: Colors.grey,
                          text: '+/-',
                          onPress: () {
                            uerInput = (int.parse(uerInput.toString()) * -1) as String;
                            setState(() {
                          });},
                          textColor: Colors.black,
                        ),
                        MyButton(
                          color: Colors.grey,
                          text: '%',
                          onPress: () {
                            uerInput+='%';
                            setState(() {
                          });},
                          textColor: Colors.black,
                        ),
                        MyButton(
                          color: Colors.orange,
                          text: '/',
                          onPress: () { uerInput+='/';setState(() {

                          });},
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '7',
                          onPress: () {
                            uerInput+='7';
                            setState(() {
                          });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '8',
                          onPress: () {
                            uerInput+='8';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '9',
                          onPress: () {
                            uerInput+='9';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.orange,
                          text: 'x',
                          onPress: () {
                            uerInput+='x';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '4',
                          onPress: () {
                            uerInput+='4';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '5',
                          onPress: () {
                            uerInput+='5';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '6',
                          onPress: () {
                            uerInput+='6';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.orange,
                          text: '-',
                          onPress: () {
                            uerInput+='-';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '1',
                          onPress: () {
                            uerInput+='1';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '2',
                          onPress: () {
                            uerInput+='2';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '3',
                          onPress: () {
                            uerInput+='3';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.orange,
                          text: '+',
                          onPress: () {
                            uerInput+='+';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            uerInput+='0';
                            setState(() {
                            });},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 5),
                            child: Container(
                              height: 80,
                              width: 160,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.grey.shade800,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                              ),
                              child: const Align(
                                alignment: Alignment(-0.6, 0),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        ),
                        MyButton(
                          color: Colors.grey.shade800,
                          text: '.',
                          onPress: () {
                            uerInput+='.';
                            setState(() {
                            });},
                          textColor: Colors.white,
                        ),
                        MyButton(
                          color: Colors.orange,
                          text: '=',
                          onPress: () {
                            evaluateResult();
                          },
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void evaluateResult(){
    String temp = uerInput.replaceAll('x', '*');
    Parser p = Parser();
    ContextModel contextModel = ContextModel();
    Expression expression = p.parse(temp);
    double ev = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = ev.toString();
    setState(() {
    });
  }
}
