import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/firebase%20Authentication/sign_in.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Page"),
      ),
      body: Center(
          child: Column(
            children: [
              Text("Welcome to home page!!You are sucessfully log in!!"),
              ElevatedButton(onPressed: (){
                FirebaseAuth.instance.signOut().then((value){
                  print("log out successfully");
Navigator.push(context,   MaterialPageRoute (
  builder: (BuildContext context) => const SignIn(),
),);
                }).onError((error, stackTrace) {
                  print("error ${error.toString()}");
                });

              }, child: Text("Log out"))
            ],
          )),
    );
  }
}
