import 'package:fastfood/components/my_login_button.dart';
import 'package:fastfood/pages/my_textfield.dart';
import 'package:fastfood/pages/sign_up.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUserIn() {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Sign In Successful ✅')));
    }
    // Add actual sign-in logic here (API call, DB check, etc.)
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background cover image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/meal'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Dark overlay
          Container(color: Colors.black.withValues(alpha: 0.6)),
      
          Positioned(
            top: screenHeight * 0.2,
            left: 0,
            right: 0,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Delicious',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Meal for every day',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 25),
      
                  // Username
                  MyTextField(
                    controller: usernameController,
                    hintText: 'User Name',
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'username is required';
                      } else if (value.length < 3) {
                        return 'username must be at least 3 characters';
                      }
                      return null;
                    },
                    icon: const Icon(
                      Icons.person,
                      size: 22,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  const SizedBox(height: 25),
      
                  // Password
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password is required';
                      } else if (value.length < 8) {
                        return 'password must be at least 8 characters';
                      }
                      return null;
                    },
                    icon: const Icon(
                      Icons.lock,
                      size: 22,
                      color: Colors.orangeAccent,
                    ),
                  ),
      
                  const SizedBox(height: 35),
      
                  MyButton(onTap: signUserIn, formKey: formKey),
      
                  const SizedBox(height: 173),
      
                  // Sign Up link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 3),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
