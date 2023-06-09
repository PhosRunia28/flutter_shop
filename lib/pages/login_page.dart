import 'package:coba_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../component/my_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.brown[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Image.asset('images/logo-padang.png'),
                const SizedBox(height: 40),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                MyButton(
                  textButton: "Masuk",
                  onTap: () => signUserIn(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  signUserIn(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
