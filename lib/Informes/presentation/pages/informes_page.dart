import 'package:flutter/material.dart';
import 'package:rev_digitales_app/shared/widgets/navigation_bar.dart';
import 'package:rev_digitales_app/Informes/presentation/widgets/CardInforme.dart';

class Informes extends StatefulWidget {
  const Informes({super.key});

  @override
  State<Informes> createState() => _InformesState();
}

class _InformesState extends State<Informes> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Informes'),
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: const Color.fromARGB(255, 226, 229, 232),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CardInforme(
                    titulo: 'Inventario General',
                    subtitulo:
                        'Genere el informe de la totalidad de las plataformas registradas en la plataforma'),
                CardInforme(
                    titulo: 'Reporte de ganancias x Mes',
                    subtitulo: 'Conozca las ganancias de un mes determinado'),
                CardInforme(
                    titulo: 'Cuentas disponibles x Bodega',
                    subtitulo:
                        'Genera el listado de las plataformas disponibles por cada bodega'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MyNavigationBar());
  }
}
