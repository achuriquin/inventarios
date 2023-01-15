class Salida {
  String _codigo="",_detalles="", _fecha="",_materiales="",_medida="",_cantidad="", _empleados="" ;

  Salida(String codigo, String detalles, String fecha, String materiales, String medida, String cantidad, String empleados){
    _codigo=codigo;
    _detalles=detalles;
    _fecha=fecha;
    _materiales=materiales;
    _medida=medida;
    _cantidad=cantidad;
    _empleados=empleados;    
  }
  String get Codigo {
    return _codigo;
  }
  set Codigo(String cod){
    _codigo=cod;
  }
  String get Detalles {
    return _detalles;
  }
  set Detalles (String det){
    _detalles=det;
  }
  String get Fecha {
    return _fecha;
  }
  set Fecha (String fec){
    _fecha=fec;
  }
  String get Materiales {
    return _materiales;
  }
  set Materiales (String mat){
    _materiales=mat;
  }
    String get Medida {
    return _medida;
  }
  set Medida(String med){
    _medida=med;
  }
    String get Cantidad {
    return _cantidad;
  }
  set Cantidad(String can){
    _cantidad=can;
  }
  String get Empleados {
    return _empleados;
  }
  set Empleados(String emp){
    _empleados=emp;
  }
}
