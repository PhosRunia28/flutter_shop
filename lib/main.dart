import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'models/shop.dart';
import 'pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Rumah Makan Nasi Padang",
        theme: ThemeData(primarySwatch: Colors.brown),
        home: const LoginPage(),
      ),
    );
  }
}
