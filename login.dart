import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
          child: Container(
            //color: Colors.lightBlueAccent,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sign In',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Card(
                      // color: Colors.lightBlue.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),

                      child: const TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          hintText: 'Search your trips',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          hintText: 'Search your trips',
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(20),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool? val) {}),
                        const Text('Remember me')
                      ],
                    ),
                    Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple),
                            onPressed: () {},
                            child: const Text('Sign in'))),
                    const Center(
                      child: Text('forgot password?'),
                    ),
                    Row(children: const <Widget>[
                      Expanded(
                          child: Divider(
                        thickness: 2,
                        color: Colors.black,
                      )),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Or"),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 2,
                        color: Colors.black,
                      )),
                    ]),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(Icons.facebook),
                            ),
                            Text('Continue with facebook')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(Icons.facebook),
                            ),
                            Text('Continue with facebook')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account"),
                    TextButton(onPressed: () {}, child: Text('Sign up'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
