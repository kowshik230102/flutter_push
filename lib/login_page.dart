import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'forgot_password_page.dart';
import 'widgets.dart'; // আলাদা ফাংশন ফাইল

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: Container(
          width: 350,
          height: 600,
          decoration: boxDecoration(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.local_fire_department, color: Colors.orange, size: 40),
                SizedBox(height: 20),
                Text('Login', style: headerTextStyle()),
                SizedBox(height: 20),
                buildTextField(Icons.email, 'Email', false),
                SizedBox(height: 20),
                buildPasswordField(_isPasswordVisible, () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                }),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Text('Remember me')
                      ],
                    ),
                    GestureDetector(
                      onTap: () => navigateToForgotPassword(context),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                buildLoginButton(),
                SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () => navigateToSignUp(context),
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToForgotPassword(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
  }

  void navigateToSignUp(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }
}
