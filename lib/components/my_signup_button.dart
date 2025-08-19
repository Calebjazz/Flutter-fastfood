import 'package:flutter/material.dart';

class MySignUpButton extends StatelessWidget {
  final VoidCallback? onTap;
  final GlobalKey<FormState> formKey;

  const MySignUpButton({
    super.key,
    required this.onTap,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState != null && formKey.currentState!.validate()) {
          // Run validation success action
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('SignUp succesfully!')),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(13),
        ),
        child: const Center(
          child: Text(
            "SIGN UP",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
