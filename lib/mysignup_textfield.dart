import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Icon icon;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.validator,
    required this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
      child: SizedBox(
        height: 65, // force the same height as IntlPhoneField
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
          decoration: InputDecoration(
            prefixIcon: SizedBox(
              width: 50,
              height: 50,
              child: icon, // make icon match height
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white, width: 1),
            ),
            contentPadding: const EdgeInsets.all(20),
            filled: true,
            fillColor: Colors.white.withValues(alpha: 0.1),
          ),
        ),
      ),
    );
  }
}
