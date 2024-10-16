import 'package:flutter/material.dart';

class inputBox extends StatelessWidget {
  const inputBox({
    super.key,
    required this.label,
    required this.controller,
    required this.obscureText,
  });

  final String label;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
