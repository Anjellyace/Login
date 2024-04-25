import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Widget label;
  final bool obscure;
  final TextEditingController controller;
  const MyTextField(
      {super.key,
      required this.label,
      required this.controller,
      required this.obscure});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
          label: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
