import 'package:inventarios/domain/entities/tipo_empleados.dart';
import 'package:inventarios/infrastructure/controllers/contipo_empleado.dart';

class entipo_empleados{
  contipo_empleado ec = contipo_empleado(); 
  entipo_empleados(){
    ec=contipo_empleado();
  }
  void selectE(String condicion, List<dynamic> retorno){
    ec.select(condicion,retorno);
  }
  void insertE(String codigo, String nombre){
    ec.insert(tipo_empleado(codigo, nombre));
  }
  void updateE(String codigo,String nombre){
    ec.update(tipo_empleado(codigo, nombre));
  }
  void deleteE(String codigo){
    ec.delete(tipo_empleado(codigo, ""));
  }
  
}