import 'package:flutter/material.dart';

class CardInforme extends StatelessWidget {
  final String titulo;
  final String subtitulo;

  CardInforme({
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
            leading: const Icon(Icons.analytics),
            title: Text(titulo),
            subtitle: Text(subtitulo),
        )],
      ),
    );
  }
}