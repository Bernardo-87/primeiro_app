import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
//------------------------------------------------------------------------------
  bool _obscureText = true;
  bool mSelecionado = false;
  bool fSelecionado = false;
  bool notificationEmail = false;
  bool notificationPhone = false;
  double fontSize = 18;
//------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Create an account",
          style: TextStyle(fontSize: fontSize),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.deepOrange,
      //   iconSize: fontSize + 6,
      //   unselectedFontSize: fontSize - 3,
      //   selectedFontSize: fontSize - 3,
      //   currentIndex: 0,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.login),
      //       label: "Login",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Register",
      //     ),
      //   ],
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.name,
                maxLength: 35,
                style:
                    TextStyle(fontSize: fontSize - 5, color: Colors.deepOrange),
                decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle:
                      TextStyle(fontSize: fontSize - 5, color: Colors.black),
                  floatingLabelStyle: const TextStyle(color: Colors.deepOrange),
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.emailAddress,
                maxLength: 40,
                style:
                    TextStyle(fontSize: fontSize - 5, color: Colors.deepOrange),
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle:
                      TextStyle(fontSize: fontSize - 5, color: Colors.black),
                  floatingLabelStyle: const TextStyle(color: Colors.deepOrange),
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                obscureText: _obscureText,
                keyboardType: TextInputType.visiblePassword,
                maxLength: 16,
                style:
                    TextStyle(fontSize: fontSize - 5, color: Colors.deepOrange),
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.deepOrange,
                    ),
                  ),
                  labelText: "Senha",
                  labelStyle:
                      TextStyle(fontSize: fontSize - 5, color: Colors.black),
                  floatingLabelStyle: const TextStyle(color: Colors.deepOrange),
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.phone,
                maxLength: 15,
                style:
                    TextStyle(fontSize: fontSize - 5, color: Colors.deepOrange),
                decoration: InputDecoration(
                  labelText: "Telefone",
                  labelStyle:
                      TextStyle(fontSize: fontSize - 5, color: Colors.black),
                  floatingLabelStyle: const TextStyle(color: Colors.deepOrange),
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.datetime,
                style:
                    TextStyle(fontSize: fontSize - 5, color: Colors.deepOrange),
                decoration: InputDecoration(
                  labelText: "Aniversário",
                  labelStyle:
                      TextStyle(fontSize: fontSize - 5, color: Colors.black),
                  floatingLabelStyle: const TextStyle(color: Colors.deepOrange),
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Selecione o gênero:',
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                  Checkbox(
                    value: mSelecionado,
                    onChanged: (value) {
                      setState(() {
                        mSelecionado = value!;
                        if (mSelecionado) {
                          fSelecionado = false;
                        }
                      });
                    },
                  ),
                  Text(
                    'M',
                    style: TextStyle(
                      fontSize: fontSize - 5,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Checkbox(
                    value: fSelecionado,
                    onChanged: (value) {
                      setState(() {
                        fSelecionado = value!;
                        if (fSelecionado) {
                          mSelecionado = false;
                        }
                      });
                    },
                  ),
                  Text(
                    'F',
                    style: TextStyle(
                      fontSize: fontSize - 5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Notificações:',
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.deepOrange,
                ),
              ),
              SwitchListTile(
                visualDensity: const VisualDensity(vertical: -4),
                title: Text(
                  'Notificações via E-mail',
                  style: TextStyle(
                    fontSize: fontSize - 2,
                  ),
                ),
                value: notificationEmail,
                onChanged: (value) {
                  setState(() {
                    notificationEmail = value;
                  });
                },
              ),
              SwitchListTile(
                visualDensity: const VisualDensity(vertical: -4),
                title: Text(
                  'Notificações via Telefone',
                  style: TextStyle(
                    fontSize: fontSize - 2,
                  ),
                ),
                value: notificationPhone,
                onChanged: (value) {
                  setState(() {
                    notificationPhone = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: fontSize - 3),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Tamanho da Fonte: ${fontSize.toInt()}',
                style: TextStyle(fontSize: fontSize),
              ),
              Slider(
                value: fontSize,
                min: 10,
                max: 30,
                onChanged: (valor) {
                  setState(
                    () {
                      fontSize = valor;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
