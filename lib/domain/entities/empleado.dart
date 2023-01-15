class empleado {
  String _codigo="", _cotipo="", _dnis="", _nombre="";
  empleado ( String codigo, String cotipo, String dnis, String nombre ){
  codigo=_codigo;
  _cotipo=cotipo;
  _dnis=dnis;
  _nombre=nombre;
  }
  set Codigo (String cod){
    _codigo=cod;
  }
  set Cotipo (String tip){
    _cotipo=tip;
  }
  set Dnis(String dni){
    _dnis=dni;
  }
  set Nombre(String nom){
    _nombre=nom;
  }
  String get Codigo{
    return _codigo;
  }
  String get Cotipo{
    return _cotipo;
  }
  String get Dnis{
    return _dnis;
  }
  String get Nombre{
    return _nombre;
  }
}