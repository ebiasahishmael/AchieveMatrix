import 'dart:ui';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AchieveMatrix',
          style: TextStyle(fontSize: 22, letterSpacing: 2),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
          ),
          Center(
            child: Container(
              height: 450,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 18, 0, 3),
                    child: Container(
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.teal,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Name",
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
                    child: Container(
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.teal,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
                    child: Container(
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.teal,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Serial-Number",
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
                    child: Container(
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.name,
                        obscureText: true,
                        cursorColor: Colors.teal,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 3),
                    child: Container(
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          primary: Colors.transparent,
                          side: BorderSide.none,
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(7, 10, 0, 7),
                          child: Text('Already have an Account?'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7, 10, 0, 7),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    child: Row(children: <Widget>[
                      Expanded(
                        child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: const Divider(
                            color: Colors.teal,
                            height: 25,
                          ),
                        ),
                      ),
                      const Text("OR"),
                      Expanded(
                        child: Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: const Divider(
                            color: Colors.teal,
                            height: 25,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: SizedBox(
                      width: 280,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 25,
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.apple,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.whatsapp,
                                color: Colors.green,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
