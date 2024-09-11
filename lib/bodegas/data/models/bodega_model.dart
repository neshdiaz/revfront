class Bodega{
  final int id;
  final nombre;

  Bodega({
    required this.id,
    required this.nombre,
  });

  factory Bodega.fromJson(Map<String, dynamic> json){
    return Bodega(
      id: json['id'],
      nombre: json['nombre'],
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'nombre': nombre,
    };
  }
}

