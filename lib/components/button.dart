import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String hintText;

  const MyButton({super.key, required this.onTap, required this.hintText });

@override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal:25),
        decoration: BoxDecoration(color:Color.fromARGB(255, 88, 57, 155),
        borderRadius: BorderRadius.circular(8)),
        child: Center(child: Text(
          '$hintText',
          style: TextStyle(color: Colors.white,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 16),
        ),)
      
      ),
    );
  }
}