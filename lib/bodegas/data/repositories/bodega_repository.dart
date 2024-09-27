import '../../../config.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/bodega.dart';

class BodegaRepository {
  final String url = AppConfig.baseUrlAPI + 'bodegas';

  Future<List<Bodega>> getBodegas() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic rawData = jsonDecode(response.body);
      final dynamic bodega_data = rawData['results'];

      //Extraemos solo los datos de las bodegas
      List<dynamic> data = bodega_data;

      // Devolvemos la lista de Bodegas validadas con el modelo
      return data.map((json) => Bodega.fromJson(json)).toList();
    }
    else {
      throw Exception('Ocurrió un error al cargar las bodegas');
    }
  }
}
