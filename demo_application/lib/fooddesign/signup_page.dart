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
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Card(
                    elevation: 0.5,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Card(
                    elevation: 0.5,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.edit),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(
                          'assets/images/smiley_dp.jpeg',
                          width: 75.0,
                          height: 75.0,
                        ),
                      ),
                      // const CircleAvatar(
                      //   radius: 20,
                      //   backgroundImage:
                      //       AssetImage('assets/images/smiley_dp.jpeg'),
                      // ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text('Sajon Islam'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text('sajonislam007@qmail.com'),
                          ),
                          Text('User ID: 1564860')
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Account'),
                      Text('Payment Method'),
                      Text('History')
                    ],
                  )
                ],
              ),
            ),
            Text('data')
          ],
        ),
      ),
    );
  }
}
