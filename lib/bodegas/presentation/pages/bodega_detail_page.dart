import 'package:flutter/material.dart';
import '../../data/models/bodega.dart';
import 'package:rev_digitales_app/bodegas/presentation/widgets/bodega_list.dart';
import 'package:rev_digitales_app/shared/widgets/navigation_bar.dart';

class BodegaDetailPage extends StatelessWidget {

  final Bodega bodega;

  const BodegaDetailPage({
    super.key,
    required this.bodega
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalle de la bodega'),
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
        body: Text(bodega.nombre),
        bottomNavigationBar: MyNavigationBar()
      );
  }
}

