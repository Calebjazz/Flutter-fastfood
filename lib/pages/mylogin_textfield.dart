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
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hintText,
          border: OutlineInputBorder(
            
            borderSide: BorderSide(color: Colors.white, width: 1),
            
          ),
            contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15), // controls height
           filled: true,
           fillColor: Colors.white.withValues(alpha: 0.1),
        ),
        style: const TextStyle(color: Colors.white70),
      ),
    );
  }
}
