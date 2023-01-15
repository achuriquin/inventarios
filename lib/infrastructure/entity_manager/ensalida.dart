import 'package:inventarios/domain/entities/salida.dart';
import 'package:inventarios/infrastructure/controllers/consalida.dart';

class Ensalida {
  Consalida ec = Consalida(); 
  Ensalida(){
    ec=Consalida();
  }
  void selectE(String condicion, List<dynamic> retorno){
    ec.select(condicion,retorno);
  }
  void insertE(String codigo, String detalles, String fecha, String materiales, String medida, String cantidad, String empleados){
    ec.insert(Salida(codigo, detalles, fecha, materiales, medida, cantidad, empleados));
  }
  void updateE(String codigo, String detalles, String fecha, String materiales, String medida, String cantidad, String empleados){
    ec.update(Salida(codigo, detalles, fecha, materiales, medida, cantidad, empleados));
  }
  void deleteE(String codigo){
    ec.delete(Salida(codigo, "", "", "", "", "", ""));
  }
}