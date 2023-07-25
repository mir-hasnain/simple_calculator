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
                MyButton(color: Colors.grey, text: 'AC', onPress: () {},textColor: Colors.black,),
                MyButton(color: Colors.grey, text: '+/-', onPress: () {},textColor: Colors.black,),
                MyButton(color: Colors.grey, text: '%', onPress: () {},textColor: Colors.black,),
                MyButton(color: Colors.orange, text: '/', onPress: () {},textColor: Colors.white,),
              ],
            ),
            Row(
              children: [
                MyButton(
                    color: Colors.grey.shade800, text: '7', onPress: () {},textColor: Colors.white,),
                MyButton(
                    color: Colors.grey.shade800, text: '8', onPress: () {},textColor: Colors.white,),
                MyButton(
                    color: Colors.grey.shade800, text: '9', onPress: () {},textColor: Colors.white,),
                MyButton(color: Colors.orange, text: 'x', onPress: () {},textColor: Colors.white,),
              ],
            ),
            Row(
              children: [
                MyButton(
                    color: Colors.grey.shade800, text: '4', onPress: () {},textColor: Colors.white,),
                MyButton(
                    color: Colors.grey.shade800, text: '5', onPress: () {},textColor: Colors.white,),
                MyButton(
                    color: Colors.grey.shade800, text: '6', onPress: () {},textColor: Colors.white,),
                MyButton(color: Colors.orange, text: '-', onPress: () {},textColor: Colors.white,),
              ],
            ),
            Row(
              children: [
                MyButton(
                    color: Colors.grey.shade800, text: '1', onPress: () {},textColor: Colors.white,),
                MyButton(
                    color: Colors.grey.shade800, text: '2', onPress: () {},textColor: Colors.white,),
                MyButton(
                    color: Colors.grey.shade800, text: '3', onPress: () {},textColor: Colors.white,),
                MyButton(color: Colors.orange, text: '+', onPress: () {},textColor: Colors.white,),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                    child: Container(
                      height: 80,
                      width: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.shade800,
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                      ),
                      child: const Align(
                        alignment: Alignment(-0.6,0),
                        child: Text(
                          '0',
                          style:
                          TextStyle(color: Colors.white, fontSize: 30),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ),
                MyButton(
                    color: Colors.grey.shade800, text: '.', onPress: () {},textColor: Colors.white,),
                MyButton(
                    color: Colors.orange, text: '=', onPress: () {},textColor: Colors.white,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
