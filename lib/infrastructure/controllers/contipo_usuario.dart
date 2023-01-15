import 'package:inventarios/domain/entities/tipo_usuario.dart';
import 'conexion.dart';

class Contipo_usuario{
  conexion con= conexion();
  ConTipo_usuario(){
    con = conexion();
}
  void select(String condicion, List<dynamic> retorno){
    con.read(condicion,retorno);
  }

  void insert(tipo_usuario dato){
    con.write(
      "insert into tipo_usuarios values ('${dato.Codigo}','${dato.Nombre}','${dato.Descripcion}')");
  }
  
  void update(tipo_usuario dato){
    con.write(
      "update tipo_usuarios set nombre='${dato.Nombre}' where codigo='${dato.Codigo}'");
  }
  void delete(tipo_usuario dato){
    con.write(
      "delete from tipo_usuarios where codigo='${dato.Codigo}'");
  }
}