import 'package:flutter/material.dart';
import 'package:rev_digitales_app/bodegas/presentation/pages/bodega_detail_page.dart';
import '../../data/models/bodega.dart';

class BodegaCard extends StatelessWidget {
  final Bodega bodega;

  BodegaCard({
    super.key,
    required this.bodega,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.corporate_fare),
            title: Text('bodega # ${bodega.id}'),
            subtitle: Text(bodega.nombre),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> BodegaDetailPage(bodega: bodega)));
            }
          )
        ],
      ),
    );
  }
}