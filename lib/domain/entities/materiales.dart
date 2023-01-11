class Materiales {
  String _codigo="",_cotipo="", _descripcion="",_medida="",_precio="",_stock="";

  Materiales(String codigo, String cotipo, String descripcion, String medida, String precio, String stock){
    _codigo=codigo;
    _cotipo=cotipo;
    _descripcion=descripcion;
    _medida=medida;
    _precio=precio;
    _stock=stock;
  }
  String get Codigo {
    return _codigo;
  }
  set Codigo(String cod){
    _codigo=cod;
  }
  String get Cotipo {
    return _cotipo;
  }
  set Cotipo (String tipo){
    _cotipo=tipo;
  }
  String get Descripcion {
    return _descripcion;
  }
  set Descripcion (String des){
    _descripcion=des;
  }
  String get Medida {
    return _medida;
  }
  set Medida (String med){
    _medida=med;
  }
    String get Precio {
    return _precio;
  }
  set Precio(String ped){
    _precio=ped;
  }
    String get Stock {
    return _stock;
  }
  set Stock(String sto){
    _stock=sto;
  }
}
