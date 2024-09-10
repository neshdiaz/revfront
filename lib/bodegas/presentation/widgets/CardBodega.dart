import 'package:flutter/material.dart';

class CardBodega extends StatelessWidget {
  final String titulo;
  final String subtitulo;

  CardBodega({
    super.key,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.corporate_fare),
            title: Text(titulo),
            subtitle: Text(subtitulo),
        )],
      ),
    );
  }
}