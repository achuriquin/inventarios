import 'package:inventarios/domain/entities/tipo_usuario.dart';
import 'package:inventarios/infrastructure/controllers/contipo_usuario.dart';

class enTipo_usuario {
  conTipo_usuario ec = conTipo_usuario(); 
  enTipo_usuario(){
    ec=conTipo_usuario();
  }
  void selectE(){
    ec.select();
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