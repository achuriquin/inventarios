import 'package:inventarios/domain/entities/tipo_material.dart';
import 'conexion.dart';

class contipo_material{
  conexion con= conexion();
  contipo_material(){
    con = conexion();
  }
  void select(String condicion, List<dynamic> retorno){
    con.read(condicion,retorno);
  }

  void insert(tipo_material dato){
    con.write(
      "insert into tipo_materiales values ('${dato.Codigo}','${dato.Descripcion}')");
  }
  
  void update(tipo_material dato){
    con.write(
      "update tipo_material set nombre='${dato.Descripcion}' where codigo='${dato.Codigo}'");
  }
  void delete(tipo_material dato){
    con.write(
      "delete from tipo_materiales where codigo='${dato.Codigo}'");
  }
  void lister (){

  }
}