import 'package:flutter/material.dart';
import 'package:metaverse/screens/homepage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: const [
                  Text(
                    "Welcome To AchieveMatrix",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        letterSpacing: 1.5),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      'The platform to increase productivity',
                      style: TextStyle(
                          fontSize: 14, color: Colors.teal, letterSpacing: 0.9),
                    ),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/Prototype-sketch2.png',
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                width: 320,
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
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                width: 320,
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
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 5),
              child: Container(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.teal,
                      letterSpacing: 0.8,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Container(
                width: 320,
                height: 42,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(color: Colors.teal),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.transparent,
                    side: BorderSide.none,
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 18, letterSpacing: 1.8, color: Colors.white),
                  ),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 5, 0),
                    child: Text(
                      'Dont Have an Account?',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.teal),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
