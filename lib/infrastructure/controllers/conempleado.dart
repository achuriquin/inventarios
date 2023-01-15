import 'conexion.dart';
import 'package:inventarios/domain/entities/empleado.dart';
class Conempleado{
  conexion con= conexion();
  Conempleado(){
    con = conexion();
  }
  void select(String condicion, List<dynamic> retorno){
    con.read(condicion, retorno);
  }

  void insert(empleado dato){
    con.write(
      "insert into empleados values ('${dato.Codigo}','${dato.Cotipo}','${dato.Dnis}','${dato.Nombre}')");
  }
  
  void update(empleado dato){
    con.write(
      "update empleados set cod_tipo='${dato.Cotipo}', dni='${dato.Dnis}', nombre='${dato.Nombre}' where codigo='${dato.Codigo}'");
  }
  void delete(empleado dato){
    con.write(
      "delete from empleados where codigo='${dato.Codigo}'");
  }
}