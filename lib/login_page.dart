import 'package:flutter/material.dart';
import 'register_page.dart';
import 'checkbox_input.dart';
import 'password_visible.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Text(
          "Finanças",
        ),
      ),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[700],
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Configurações",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Sobre",
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 50,
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [




              TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.amber[700],
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: const TextStyle(color: Colors.black),
                  floatingLabelStyle: TextStyle(
                    color: Colors.amber[700],
                  ),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber.shade700,
                    ),
                  ),
                ),
              ),


              const SizedBox(
                height: 10,
              ),
              const PasswordVisible(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Remember me"),
                  EntradaCheckBox(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[700],
                  fixedSize: const Size(100, 50),
                ),
                onPressed: () {},
                child: const Text(
                  "Enter",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New Here?"),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                    },
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                        color: Colors.amber[700],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
