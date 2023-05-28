import 'package:flutter/material.dart';
import 'register_page.dart';
import 'home_page.dart';
import 'login_page.dart';


void main() => runApp(const Start());

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/register': (context) => const CreateAccount(),
      },
    );
  }
}
