import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.red,
          leading: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
                child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
          ),
          actions: const [
            Card(
              child: Icon(
                Icons.edit,
                color: Colors.black,
              ),
            )
          ],
          title: const Center(
              child: Text(
            'My Profile',
            style: TextStyle(color: Colors.black),
          )),
        ),
        body: Container(),
      ),
    );
  }
}
