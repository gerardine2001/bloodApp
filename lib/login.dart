import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          height: 480,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset("images/blood.png"),
          ),
        ),
        const SizedBox(
          height: 110,
        ),
        loginButton("Log in"),
        const SizedBox(
          height: 30,
        ),
        loginButton("Sign Up", onTap: () {
          Navigator.of(context).pushNamed('/signup'); // Navigate to SignUpPage
        }),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                const Text(
                  "Learn more",
                  style: TextStyle(fontSize: 15, color: Colors.redAccent),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/survey');
                  },
                  child: const Text(
                    "Skip now ->",
                    style: TextStyle(fontSize: 15, color: Colors.redAccent),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget loginButton(String title, {VoidCallback? onTap}) { // Add onTap parameter
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: onTap, // Use the onTap callback
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    ),
  );
}