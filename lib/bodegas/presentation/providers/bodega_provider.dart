import 'package:flutter/material.dart';
import '../../data/models/bodega.dart';
import '../../data/repositories/bodega_repository.dart';

class BodegaProvider with ChangeNotifier {
  // Instanciamos e inicializamos el repositorio de Bodegas
  final BodegaRepository _bodegaRepository = BodegaRepository();

  // Creamos variables para mantener la lista de las bodegas
  // y el estado del indicador de cargando del widget
  List<Bodega> _bodegas = [];
  bool _loading = false;

  List<Bodega> get bodegas => _bodegas;
  bool get loading => _loading;

  Future<void> fetchBodegas() async {
    _loading = true;
    //Actualizo los widgets
    notifyListeners();

    try {
      // Consulto la API desde el repositorio con la lista de bodegas
      _bodegas = await _bodegaRepository.getBodegas();

    } catch (e) {
      print(e);
    }
    finally {

      // Indicador de cargando se oculta y
      // se actualizan nuevamente los wdigets conectados
      _loading = false;
      notifyListeners();
    }
  }
}
