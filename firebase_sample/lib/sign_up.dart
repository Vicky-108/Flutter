import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameCon = TextEditingController();
  TextEditingController _userNameCon = TextEditingController();
  TextEditingController _passwordCon = TextEditingController();
  _signUp() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _userNameCon.text, password: _passwordCon.text)
        .then((value) {
      print("Create account successfully");
      print("valueeeeee${value.toString()}");
      print("usre name ${_userNameCon.text} password${_passwordCon.text}");
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => SignIn()));
    }).onError((error, stackTrace) {
      print("Error ${error.toString()}${stackTrace.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [
          TextField(controller: _nameCon),
          SizedBox(
            height: 20.0,
          ),
          TextField(controller: _userNameCon),
          SizedBox(
            height: 20.0,
          ),
          TextField(controller: _passwordCon),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(onPressed: _signUp, child: Text("SignUp"))
        ]),
      ),
    );
  }
}
