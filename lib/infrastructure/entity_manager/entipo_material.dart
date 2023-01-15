import 'package:inventarios/domain/entities/tipo_material.dart';
import 'package:inventarios/infrastructure/controllers/contipo_material.dart';

class entipo_material {
  contipo_material ec = contipo_material(); 
  entipo_material(){
    ec=contipo_material();
  }
  void selectE(String condicion, List<dynamic> retorno){
    ec.select(condicion,retorno);
  }
  void insertE(String codigo, String descripcion){
    ec.insert(tipo_material(codigo, descripcion));
  }
  void updateE(String codigo,  String descripcion){
    ec.update(tipo_material(codigo,  descripcion));
  }
  void deleteE(String codigo){
    ec.delete(tipo_material(codigo, "",));
  }
}