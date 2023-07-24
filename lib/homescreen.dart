import 'package:flutter/material.dart';
import 'package:simple_calculator/components/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                MyButton(color: Colors.grey, text: 'Ac', onPress: (){}),
                MyButton(color: Colors.grey, text: '+/-', onPress: (){}),
                MyButton(color: Colors.grey, text: '%', onPress: (){}),
                MyButton(color: Colors.orange, text: '/', onPress: (){}),
              ],
            ),
            Row(
              children: [
                MyButton(color: Colors.grey.shade800, text: '7', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '8', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '9', onPress: (){}),
                MyButton(color: Colors.orange, text: 'x', onPress: (){}),
              ],
            ),
            Row(
              children: [
                MyButton(color: Colors.grey.shade800, text: '4', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '5', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '6', onPress: (){}),
                MyButton(color: Colors.orange, text: '-', onPress: (){}),
              ],
            ),
            Row(
              children: [
                MyButton(color: Colors.grey.shade800, text: '1', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '2', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '3', onPress: (){}),
                MyButton(color: Colors.orange, text: '+', onPress: (){}),
              ],
            ),
            Row(
              children: [
                MyButton(color: Colors.grey.shade800, text: '0', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '.', onPress: (){}),
                MyButton(color: Colors.grey.shade800, text: '.', onPress: (){}),
                MyButton(color: Colors.orange, text: '=', onPress: (){}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
