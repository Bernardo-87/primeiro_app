import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Text(
          "Create an account",
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[700],
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Login",
          ),
        ],),
      body: const Center(
        child: ElevatedButton(
          onPressed: null,
          child: Text("Nada"),
        ),
      ),
    );
  }
}
