import 'package:fastfood/components/my_button.dart';
import 'package:fastfood/pages/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameContoller = TextEditingController();
  final TextEditingController passwordContolller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background cover image!
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/meal'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Dark overlay
          Container(color: Colors.black.withValues(alpha: 0.5)),
          Positioned(
            top: screenHeight * 0.2,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Delicious',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8), // small gap between texts
                Text(
                  'Meal for every day',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 25,),
                  MyTextField(
            controller:usernameContoller,
            hintText: 'User Name',
            obscureText: false,
            icon: Icon(Icons.person, size: 22,color: Colors.orangeAccent,),
          ),
          const SizedBox(height: 25,),
      
           MyTextField(
            controller: passwordContolller,
            hintText: 'Password',
            obscureText: false,
            icon: Icon(Icons.lock, size:22, color: Colors.orangeAccent,),
          ),
      
          const SizedBox(height:35,),
      
          MyButton(),
           const SizedBox(height: 190,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an Account?',
                style: TextStyle(color: Colors.white,),
              ),
             const SizedBox(width: 6,),
              Text(
                'Sign Up',
                style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold),
              ),
            ],
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
