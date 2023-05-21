import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool? _valor = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.amber[700],
      value: _valor,
      onChanged: (valor) {
        setState(() {
          _valor = valor;
        });
        print(valor.toString());
      },
    );
  }
}
