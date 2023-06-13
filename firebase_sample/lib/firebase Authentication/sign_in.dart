import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/firebase%20Authentication/home_page.dart';
import 'package:firebase_sample/firebase%20Authentication/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  _clickSignIn() {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _nameController.text, password: _passwordController.text).then((value){
      print("valueeeeee${value.toString()}");
          print("Sign up successfully");
          Navigator.push(context,   MaterialPageRoute (
            builder: (BuildContext context) => const HomePage(),
          ),);

    }).onError((error, stackTrace) {
      print("error ${error.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(controller: _nameController)),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(controller: _passwordController)),
            const SizedBox(
              height: 40.0,
            ),

            TextButton(onPressed: (){}, child: Text("forgot password",textAlign: TextAlign.right),),
            ElevatedButton(onPressed: _clickSignIn, child: Text("Sign In")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const SignUp(),
                    ),
                  );
                },
                child: Text("SignUp"))
          ],
        ),
      ),
      // This trailing  comma  makes auto-formatting nicer for build methods.
    );
  }
}
