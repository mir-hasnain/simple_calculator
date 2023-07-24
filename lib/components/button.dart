import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPress;
  final Color color;
  final String text;
    const MyButton({super.key , required this.color, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Text(text , style: const TextStyle(color: Colors.white,fontSize: 2),),
      ),
    );
  }
}
