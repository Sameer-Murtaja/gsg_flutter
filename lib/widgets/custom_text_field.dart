import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hint, 
  this.isPassword = false, required this.cont});

  final String? hint;
  final bool isPassword;
  final TextEditingController cont;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,
       horizontal: 60),
      child: TextField(
        controller: cont,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}
