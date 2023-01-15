import 'package:inventarios/domain/entities/tipo_usuario.dart';
import 'package:inventarios/infrastructure/controllers/contipo_usuario.dart';

class entipo_usuario {
  Contipo_usuario ec = Contipo_usuario(); 
  entipo_usuario(){
    ec=Contipo_usuario();
  }
  void selectE(String condicion, List<dynamic> retorno){
    ec.select(condicion,retorno);
  }
  void insertE(String codigo, String nombre, String descripcion){
    ec.insert(tipo_usuario(codigo, nombre, descripcion));
  }
  void updateE(String codigo, String nombre, String descripcion){
    ec.update(tipo_usuario(codigo, nombre, descripcion));
  }
  void deleteE(String codigo){
    ec.delete(tipo_usuario(codigo, "", ""));
  }
}