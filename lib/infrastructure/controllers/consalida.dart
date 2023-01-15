import 'conexion.dart';
import 'package:inventarios/domain/entities/salida.dart';

class Consalida{
  conexion con= conexion();
  Consalida(){
    con = conexion();
  }
  void select(String condicion, List<dynamic> retorno){
    con.read(condicion, retorno);
  }

  void insert(Salida dato){
    con.write(
      "insert into encabezado_salida values ('${dato.Codigo}','${dato.Detalles}','${dato.Fecha}','${dato.Materiales}','${dato.Medida}','${dato.Cantidad}','${dato.Empleados}')");
  }
  
  void update(Salida dato){
    con.write(
      "update encabezado_salida set detalles='${dato.Detalles}', fecha='${dato.Fecha}', cod_materiales='${dato.Materiales}', medida='${dato.Medida}', cantidad='${dato.Cantidad}', empleado='${dato.Empleados}' where codigo='${dato.Codigo}'");
  }
  void delete(Salida dato){
    con.write(
      "delete from encabezado_salida where codigo='${dato.Codigo}'");
  }
}