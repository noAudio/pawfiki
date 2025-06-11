import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String hintText;
  final bool? isObscured;
  const TextBox({super.key, required this.hintText, this.isObscured});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextField(
        decoration: InputDecoration(hintText: hintText),
        obscureText: isObscured ?? false,
      ),
    );
  }
}
