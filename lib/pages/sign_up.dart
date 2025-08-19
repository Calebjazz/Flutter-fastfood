import 'package:flutter/material.dart';
import 'package:fastfood/components/my_signup_button.dart';
import 'package:fastfood/pages/my_textfield.dart';

class SignUp extends StatefulWidget {
  final VoidCallback? onTap;

  const SignUp({super.key, this.onTap});

  @override
  State<SignUp> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  final RegExp _emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final RegExp _phoneRegExp = RegExp(r'^[0-9]{10}$');

  void signUserIn() {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      // If validation passed
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('SignUp Successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background cover image
            Container(
              height: screenHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/meal'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Dark overlay
            Container(
              height: screenHeight,
              color: Colors.black.withValues(alpha: 0.6),
            ),

            // Form
            Positioned(
              top: screenHeight * 0.15,
              left: 20,
              right: 20,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    Text(
                      'Delicious',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Meal for every day',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),

                    const SizedBox(height: 25),

                    // Username
                    MyTextField(
                      controller: _usernameController,
                      hintText: 'User Name',
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username is required';
                        } else if (value.length < 3) {
                          return 'Username must be at least 3 characters';
                        }
                        return null;
                      },
                      icon: Icon(Icons.person, size: 22, color: Colors.orangeAccent),
                    ),

                    const SizedBox(height: 25),

                    // Password
                    MyTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        } else if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                      icon: Icon(Icons.lock, size: 22, color: Colors.orangeAccent),
                    ),

                    const SizedBox(height: 25),

                    // Email
                    MyTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        } else if (!_emailRegExp.hasMatch(value)) {
                          return 'Enter a valid Email';
                        }
                        return null;
                      },
                      icon: Icon(Icons.email, size: 22, color: Colors.orangeAccent),
                    ),

                    const SizedBox(height: 25),

                    // Phone Number
                    MyTextField(
                      controller: _phoneNumberController,
                      hintText: 'Phone Number',
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone number is required';
                        } else if (!_phoneRegExp.hasMatch(value)) {
                          return 'Enter a valid 10-digit Phone number';
                        }
                        return null;
                      },
                      icon: Icon(Icons.phone, size: 22, color: Colors.orangeAccent),
                    ),

                    const SizedBox(height: 35),

                    // Signup Button
                    MySignUpButton(
                      onTap: signUserIn, 
                      formKey: formKey,
                    ),

                    const SizedBox(height: 30),

                    // Login Link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an Account?',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 6),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Login',
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
      ),
    );
  }
}
