import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  final onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 164, 219, 219),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          'SUBMIT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
