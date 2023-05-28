import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);

  final List<String> itemList = List<String>.generate(20, (index) => 'Item ${index + 1}');

  @override

  Widget build(BuildContext context) {
//------------------------------------------------------------------------------
    final user = ModalRoute.of(context)!.settings.arguments! as String;
//------------------------------------------------------------------------------
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo, $user'),
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return ListTile(
            title: Text(item),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Alerta'),
                    content: Text('Você clicou no $item'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Sim'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Não'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
