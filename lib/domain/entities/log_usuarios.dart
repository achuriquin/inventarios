class log_Usuarios {
  String _codigo="",_cod_tipo="", _nombre="", _usuario="", _contrasenia="";

  log_Usuarios(String codigo, String cod_tipo, String nombre, String usuario, String contrasenia){
    _codigo=codigo;
    _cod_tipo=cod_tipo;
    _nombre=nombre;
    _usuario=usuario;
    _contrasenia=contrasenia;
  }
String get Codigo {
    return _codigo;
  }
  set Codigo (String cod ){
    _codigo=cod;
  }
  String get codigoTipo {
    return _cod_tipo;
  }
  set codigoTipo (String tip ){
    _cod_tipo=tip;
  }
  String get Nombres  {
    return _nombre;
  }
  set Nombres (String nom ){
    _nombre=nom;
  }
String get Usuario  {
    return _usuario;
  }
  set Usuario (String usu ){
    _usuario=usu;
  }
  String get Contrasenia  {
    return _contrasenia;
  }
  set Contrasenia (String con ){
    _contrasenia=con;
  }

}