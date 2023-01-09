class tipo_usuario {
  String _codigo="",_nombre="", _descripcion="";

  tipo_usuario(String codigo, String nombre, String descripcion){
    _codigo=codigo;
    _nombre=nombre;
    _descripcion=descripcion;
  }
  String get Codigo {
    return _codigo;
  }
  set Codigo(String cod){
    _codigo=cod;
  }
  String get Nombre {
    return _nombre;
  }
  set Nombre (String nom){
    _nombre=nom;
  }
  String get Descripcion {
    return _descripcion;
  }
  set Descripcion (String des){
    _descripcion=des;
  }
}
