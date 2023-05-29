import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Page"),),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 50,
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white12,
                          title: const Center(
                            child: Text(
                              'Primeiro App',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          actions: [
                            Center(
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 15),
                                  const Text('-----------------------------------', style: TextStyle(color: Colors.white24),),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Desenvolvido por:\n\nBernardo Rezende'),
                                  ),
                                  const Text('-----------------------------------', style: TextStyle(color: Colors.white24),),
                                  const SizedBox(height: 15),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Version 1.0.0'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("Sobre o App")),
            ],
          ),
        ),
      ),
    );
  }
}
