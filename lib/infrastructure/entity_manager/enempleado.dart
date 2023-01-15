import 'package:inventarios/domain/entities/empleado.dart';
import 'package:inventarios/infrastructure/controllers/conempleado.dart';


class Enempleado {
  Conempleado ec = Conempleado(); 
  Enempleado(){
    ec=Conempleado();
  }
  void selectE(String condicion, List<dynamic> retorno){
    ec.select(condicion,retorno);
  }
  void insertE(String codigo, String cotipo, String dnis,String nombre ){
    ec.insert(empleado(codigo, cotipo, dnis, nombre));
  }
  void updateE(String codigo, String cotipo, String dnis,String nombre){
    ec.update(empleado(codigo, cotipo, dnis, nombre));
  }
  void deleteE(String codigo){
    ec.delete(empleado(codigo, "", "", ""));
  }
}