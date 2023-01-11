import 'package:inventarios/domain/entities/materiales.dart';
import 'conexion.dart';

class conMateriales{
  conexion con= conexion();
  conMateriales(){
    con = conexion();
}
void select(){
    con.read("select * from materiales");
  }

  void insert(Materiales dato){
    con.write(
      "insert into materiales values ('${dato.Codigo}','${dato.Cotipo}','${dato.Descripcion}','${dato.Medida}','${dato.Precio}','${dato.Precio}')");
  }
  
  void update(Materiales dato){
    con.write(
      "update materiales set cod_tipo='${dato.Cotipo}',descripcion='${dato.Descripcion}'medida='${dato.Medida}', precio='${dato.Precio}',stock='${dato.Stock}' where codigo='${dato.Codigo}'");
  }
  void delete(Materiales dato){
    con.write(
      "delete from materiales where codigo='${dato.Codigo}'");
  }
}