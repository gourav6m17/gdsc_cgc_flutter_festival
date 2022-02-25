import 'package:flutter/material.dart';
import 'package:gdsc_cgc/kuch_bhi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "images/image1.jpeg",
              height: 200,
              width: 200,
            ),
          ),
          const Text(
            "Login",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Please sign in continue",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const TextField(),
          const TextField(),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const KuchBhi(),
                  ),
                );
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
