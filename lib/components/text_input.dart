import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final bool? isObscured;
  const TextInput({super.key, required this.hintText, this.isObscured});

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
