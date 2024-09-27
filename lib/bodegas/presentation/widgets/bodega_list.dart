import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rev_digitales_app/bodegas/presentation/widgets/bodega_card.dart';
import '../providers/bodega_provider.dart';

class BodegaList extends StatelessWidget {
  BodegaList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: const Color.fromARGB(255, 226, 229, 232),
        width: double.infinity,
        child: Consumer<BodegaProvider>(
          builder: (context, bodegaProvider, child) {
            if (bodegaProvider.loading) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: bodegaProvider.bodegas.length,
              itemBuilder: (context, index) {
                final bodega = bodegaProvider.bodegas[index];
                return BodegaCard(bodega: bodega);
              },
            );
          },
        ),
      )
    );
  }
}
