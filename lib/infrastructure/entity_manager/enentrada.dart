import 'package:inventarios/domain/entities/entrada.dart';
import 'package:inventarios/infrastructure/controllers/conentrada.dart';

class Enentrada {
  Conentrada ec = Conentrada(); 
  Enentrada(){
    ec=Conentrada();
  }
  void selectE(String condicion, List<dynamic> retorno){
    ec.select(condicion,retorno);
  }
  void insertE(String codigo, String detalles, String fecha, String materiales, String medida, String cantidad, String empleados){
    ec.insert(Entrada(codigo, detalles, fecha, materiales, medida, cantidad, empleados));
  }
  void updateE(String codigo, String detalles, String fecha, String materiales, String medida, String cantidad, String empleados){
    ec.update(Entrada(codigo, detalles, fecha, materiales, medida, cantidad, empleados));
  }
  void deleteE(String codigo){
    ec.delete(Entrada(codigo, "", "", "", "", "", ""));
  }
}