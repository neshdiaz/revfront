import 'package:flutter/material.dart';

class BodegaListResponsables extends StatelessWidget {
  final List<dynamic> responsables;

  BodegaListResponsables({
    super.key,
    required this.responsables,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: responsables.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var responsable = responsables[index];
          return ListTile(
            title: Text('Responsables: ${responsable['usuario_auth']['first_name']}'),
          );
        });
  }
}
