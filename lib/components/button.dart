import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPress;
  final Color color;
  final String text;
  final Color textColor ;
    const MyButton({super.key , required this.color, required this.text, required this.onPress, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 5),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(child: Text(text , style: TextStyle(color: textColor,fontSize: 30),)),
        ),
      ),
    );
  }
}
