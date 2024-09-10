import 'package:flutter/material.dart';
import 'package:rev_digitales_app/bodegas/presentation/widgets/CardBodega.dart';

class ListCardBodegas extends StatelessWidget {
  ListCardBodegas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
