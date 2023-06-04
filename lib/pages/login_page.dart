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
                Image.asset('images/coffee.png'),
                const SizedBox(height: 20),
                Text(
                  "Welcome To My Shop",
                  style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 35),
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
