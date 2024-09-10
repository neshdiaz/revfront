import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text('Digita tus datos de acceso. ',
                  style: TextStyle(fontSize: 14)),
            ),
            TextFormField(
              //style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  labelText: 'Usuario',
                  icon: Icon(Icons.person),
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 28, 38, 173))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                obscureText: true,
                //style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    icon: Icon(Icons.lock),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 28, 38, 173))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/home'),
              },
                  child: Text('Entrar')),
            )
          ]),
    ));
  }
}
