import 'package:flutter/material.dart';
import 'package:rev_digitales_app/shared/widgets/navigation_bar.dart';
import 'package:rev_digitales_app/bodegas/presentation/widgets/CardBodega.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: const Color.fromARGB(255, 226, 229, 232),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CardBodega(
                  titulo: 'Bodega Principal',
                  subtitulo: 'Activa',
                ),
                CardBodega(
                  titulo: 'Bodega Latam',
                  subtitulo: 'Activa',
                ),
                CardBodega(
                  titulo: 'Bodega Netflix',
                  subtitulo: 'Activa',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MyNavigationBar());
  }
}
