import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {


  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  final String hintText;
  final controller;
  final obscureText;

  @override
  Widget build(BuildContext context){
    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller:controller,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: TextStyle(fontFamily: 'Roboto', color: Colors.grey[500]),
                      fillColor: Colors.grey[100],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white,),
                          borderRadius: BorderRadius.circular(8.0),
                          ),
                          
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 179, 142, 46)),
                              borderRadius: BorderRadius.circular(8.0),),
                    ),
                  ),
                );
  }
}


