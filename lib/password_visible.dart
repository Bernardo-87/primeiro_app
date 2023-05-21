import 'package:flutter/material.dart';

class PasswordVisible extends StatefulWidget {
  const PasswordVisible({Key? key}) : super(key: key);

  @override
  State<PasswordVisible> createState() => _PasswordVisibleState();
}

class _PasswordVisibleState extends State<PasswordVisible> {
  bool _osbcuretext = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
            style: const TextStyle(color: Colors.red),
      cursorColor: Colors.amber[700],
      obscureText: _osbcuretext,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _osbcuretext = !_osbcuretext;
            });
            print(_osbcuretext);
          },
          child: Icon(
            _osbcuretext ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.amber.shade700,
          ),
        ),
        labelText: "Password",
      ),
    );
  }
}
