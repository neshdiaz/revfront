import 'package:flutter/material.dart';
import 'package:rev_digitales_app/bodegas/presentation/widgets/ListCardBodegas.dart';
import 'package:rev_digitales_app/shared/widgets/navigation_bar.dart';

class Bodegas extends StatefulWidget {
  const Bodegas({super.key});

  @override
  State<Bodegas> createState() => _BodegasState();
}

class _BodegasState extends State<Bodegas> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bodegas'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Acción del botón
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                print('Clic en opciones de usuario');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(child: ListCardBodegas()),
        bottomNavigationBar: MyNavigationBar()
      );
  }
}
