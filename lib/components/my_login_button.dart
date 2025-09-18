import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const MyButton({
    super.key,
    required this.formKey,
    required this.usernameController,
    required this.passwordController, required void Function() onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState != null && formKey.currentState!.validate()) {
          // Checking credentials
          if (usernameController.text == "caleb muladi" ||
              passwordController.text == "123456") {
            // if login is successful we go to User Dashboard
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Sign In successfully"),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.pushReplacementNamed(context, '/user_dashboard');
          } else {
            // it show Invalid credentials
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Invalid credentials"),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(13),
        ),
        child: const Center(
          child: Text(
            "SIGN IN",
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
