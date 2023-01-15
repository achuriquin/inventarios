import 'package:inventarios/domain/entities/tipo_empleados.dart';
import 'conexion.dart';

class contipo_empleado{
  conexion con= conexion();
  contipo_empleado(){
    con = conexion();
  }
  void select(String condicion, List<dynamic> retorno){
    con.read(condicion,retorno);
  }

  void insert(tipo_empleado dato){
    con.write(
      "insert into tipo_empleados values ('${dato.Codigo}','${dato.Nombre}')");
  }
  
  void update(tipo_empleado dato){
    con.write(
      "update tipo_empleados set nombre='${dato.Nombre}' where codigo='${dato.Codigo}'");
  }
  void delete(tipo_empleado dato){
    con.write(
      "delete from tipo_empleados where codigo='${dato.Codigo}'");
  }
}