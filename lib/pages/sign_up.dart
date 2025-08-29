import 'package:flutter/material.dart';
import 'package:fastfood/components/my_signup_button.dart';
import 'package:fastfood/mysignup_textfield.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

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

  String phoneNumber = "";

  void signUserIn() {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      print("Full phone: $phoneNumber");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('SignUp Successfully!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset:true,
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
              top: screenHeight * 0.1,
              left: 20,
              right: 20,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Join Fastfood and get your favorite meals.',
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),

                    const SizedBox(height: 15),

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
                      icon: const Icon(
                        Icons.person,
                        size: 22,
                        color: Colors.orangeAccent,
                      ),
                    ),

                    const SizedBox(height: 15),

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
                        } else if (!RegExp(r'^(?=.*[A-Z])').hasMatch(value)) {
                          return 'Password must contain at least one uppercase letter';
                        } else if (value.contains(' ')) {
                          return 'Password should not contain spaces';
                        }
                        const weakPasswords = [
                          '123456',
                          '12345678',
                          'password',
                          'qwerty',
                          '111111',
                          'abcdef',
                          '123123',
                          '123456789',
                        ];
                        if (weakPasswords.contains(value)) {
                          return 'Enter a stronger password.';
                        }
                        return null;
                      },
                      icon: const Icon(
                        Icons.lock,
                        size: 22,
                        color: Colors.orangeAccent,
                      ),
                      
                    ),

                    const SizedBox(height: 15),

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
                      icon: const Icon(
                        Icons.email,
                        size: 22,
                        color: Colors.orangeAccent,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Phone Number 
                    IntlPhoneField(
                      controller: _phoneNumberController,
                        dropdownTextStyle: const TextStyle(
                          color: Colors.white70),
                            dropdownIcon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                                ),
                      initialCountryCode: 'TZ', style: const TextStyle(color: Colors.white70),// Default: Tanzania
                      decoration: InputDecoration(
                          filled: true,
                      fillColor: Colors.white.withValues(alpha: 0.1),
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                      ),
                      onChanged: (PhoneNumber phone) {
                        setState(() {
                          phoneNumber = phone.completeNumber; // full phone
                        });
                      },
                      validator: (value) {
                        if (value == null || value.number.isEmpty) {
                          return 'Phone number is required';
                        } else if (value.number.length < 9) {
                          return 'Enter a valid phone number';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 15),

                    // Signup Button
                    MySignUpButton(onTap: signUserIn, formKey: formKey),

                    const SizedBox(height: 20),

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
