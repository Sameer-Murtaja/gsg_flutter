import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.isPassword = false,
    required this.cont,
    this.validate,
  });

  final String? hint;
  final bool isPassword;
  final TextEditingController cont;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
      child: TextFormField(
        validator: validate,
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
