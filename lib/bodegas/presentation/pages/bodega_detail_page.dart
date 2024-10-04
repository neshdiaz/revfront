import 'package:flutter/material.dart';
import 'package:rev_digitales_app/bodegas/presentation/widgets/bodega_list_responsables.dart';
import '../../data/models/bodega.dart';
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
        body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${bodega.nombre}'),
            Text('Creada: ${bodega.created}'),
            Text('Actualizada: ${bodega.updated}'),
            //Aqui va el widget que muestra la lista de responables...
            //Text('Responsables: ${bodega.responsables[0]['usuario_auth']['first_name']}'),
            BodegaListResponsables(responsables: bodega.responsables),
          ],
        ),
        ),
        bottomNavigationBar: MyNavigationBar()
      );
  }
}

