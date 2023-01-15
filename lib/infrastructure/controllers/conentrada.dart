import 'conexion.dart';
import 'package:inventarios/domain/entities/entrada.dart';
class Conentrada{
  conexion con= conexion();
  Conentrada(){
    con = conexion();
  }
  void select(String condicion, List<dynamic> retorno){
    con.read(condicion,retorno);
  }

  void insert(Entrada dato){
    con.write(
      "insert into encabezado_entrada values ('${dato.Codigo}','${dato.Detalles}','${dato.Fecha}','${dato.Materiales}','${dato.Medida}','${dato.Cantidad}','${dato.Empleados}')");
  }
  
  void update(Entrada dato){
    con.write(
      "update encabezado_entrada set detalles='${dato.Detalles}', fecha='${dato.Fecha}', cod_materiales='${dato.Materiales}', medida='${dato.Medida}', cantidad='${dato.Cantidad}', empleado='${dato.Empleados}' where codigo='${dato.Codigo}'");
  }
  void delete(Entrada dato){
    con.write(
      "delete from encabezado_entrada where codigo='${dato.Codigo}'");
  }
}