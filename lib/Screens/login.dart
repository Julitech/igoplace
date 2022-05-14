import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:igoplace/Screens/homepage.dart';
import 'package:igoplace/Screens/signup.dart';
import 'package:igoplace/colors.dart';
import 'package:igoplace/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/logo.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomField(
              controller: emailController,
              hint: 'Username or email address',
              icon: Icons.person,
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: isObscure,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                hintStyle: TextStyle(
                  color: Color(0xff8e8f99),
                  fontSize: 14,
                ),
                fillColor: Color(0xFFF3F4F8),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D2D8),
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Homepage(),
                ));
              },
              text: 'Login',
            ),
            Spacer(),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Color(0xff8e8f99),
                    fontSize: 14,
                  ),
                ),
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ));
                    },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
