class Bodega {
  final int id;
  final String nombre;
  final String created;
  final String updated;
  final List<dynamic> responsables;

  Bodega({
    required this.id,
    required this.nombre,
    required this.created,
    required this.updated,
    required this.responsables,

  });

  factory Bodega.fromJson(Map<String, dynamic> json) {
    return Bodega(
      id: json['id'],
      nombre: json['nombre'],
      created: json['created'],
      updated: json['updated'],
      responsables: json['responsables'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'created': created,
      'responsables': responsables,
    };
  }
}

class Responsables{
  final List<UsuarioAuth> usuarioAuth;

  Responsables({
    required this.usuarioAuth,
  });

  factory Responsables.fromJson(Map<String, dynamic> json) {
    return Responsables(
      usuarioAuth: json['usuario_auth'],
    );
  }
}

class UsuarioAuth{
  final String first_name;
  final String last_name;

  UsuarioAuth({
    required this.first_name,
    required this.last_name,
  });

  factory UsuarioAuth.fromJson(Map<String, dynamic> json) {
    return UsuarioAuth(
      first_name: json['first_name'],
      last_name: json['last_name'],
    );
  }
}




