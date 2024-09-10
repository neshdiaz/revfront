import 'package:flutter/material.dart';
import '../../widgets/LoginFormWidget.dart';
import '../../widgets/LoginHeaderWidget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253) ,
      appBar: AppBar(
        title: const Text('Reventas Digitales'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              print('Clic en opciones de usuario');
            },
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            LoginHeaderWidget(),
            LoginFormWidget(),
          ],
        ),
      )

    );
  }
}

