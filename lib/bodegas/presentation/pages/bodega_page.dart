import 'package:flutter/material.dart';
import 'package:rev_digitales_app/bodegas/presentation/widgets/bodega_list.dart';
import 'package:rev_digitales_app/shared/widgets/navigation_bar.dart';

class BodegaListPage extends StatelessWidget {
  const BodegaListPage({super.key});

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
        body: BodegaList(),
        bottomNavigationBar: MyNavigationBar()
      );
  }
}

