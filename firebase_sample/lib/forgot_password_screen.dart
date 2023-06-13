import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _forgotPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            controller: _forgotPasswordController,
          ),
        ),
        ElevatedButton(onPressed: _forgotPassword, child: const Text("Reset Password"))
      ]),
    );
  }
  _forgotPassword(){

  }
}
