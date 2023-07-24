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
      body: Column(
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
              MyButton(color: Colors.grey, text: 'Ac', onPress: (){}),
              MyButton(color: Colors.grey, text: '+/-', onPress: (){}),
              MyButton(color: Colors.grey, text: '%', onPress: (){}),
              MyButton(color: Colors.orange, text: '/', onPress: (){}),
            ],
          ),
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
              MyButton(color: Colors.grey, text: 'Ac', onPress: (){}),
              MyButton(color: Colors.grey, text: '+/-', onPress: (){}),
              MyButton(color: Colors.grey, text: '%', onPress: (){}),
              MyButton(color: Colors.orange, text: '/', onPress: (){}),
            ],
          ),
          Row(
            children: [
              MyButton(color: Colors.grey, text: 'Ac', onPress: (){}),
              MyButton(color: Colors.grey, text: '+/-', onPress: (){}),
              MyButton(color: Colors.grey, text: '%', onPress: (){}),
              MyButton(color: Colors.orange, text: '/', onPress: (){}),
            ],
          ),
        ],
      ),
    );
  }
}
