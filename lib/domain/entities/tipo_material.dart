class tipo_material {
  String _codigo="", _descripcion="";

  tipo_material(String codigo, String descripcion,){
    _codigo=codigo;
    _descripcion=descripcion;    
  }
  String get Codigo {
    return _codigo;
  }
  set Codigo(String cod){
    _codigo=cod;
  }
  
  String get Descripcion {
    return _descripcion;
  }
  set Descripcion (String des){
    _descripcion=des;
  }
  
}
