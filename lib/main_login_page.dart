import 'package:flutter/material.dart';
import 'package:primeiro_app/login_page.dart';
import 'package:primeiro_app/register_page.dart';

class MainLogin extends StatefulWidget {
  const MainLogin({Key? key}) : super(key: key);

  @override
  State<MainLogin> createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Main Page'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[700],
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "Login",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Register",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [LoginPage(), CreateAccount()],
      ),
    );
  }
}
