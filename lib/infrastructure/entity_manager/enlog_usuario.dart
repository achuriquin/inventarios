import 'package:inventarios/domain/entities/log_usuarios.dart';
import 'package:inventarios/infrastructure/controllers/conlog_usuario.dart';

class enLog_usuarios{
  conLog_usuarios ec =conLog_usuarios();
  enLog_usuarios(){
    ec=conLog_usuarios();
  }
  void selectE(){
    ec.select();
  }
  void insertE(String codigo, String codtipo, String nombre, String usuario, String contrasenia){
    ec.insert(log_Usuarios(codigo, codtipo, nombre, usuario, contrasenia));
  }
  void updateE(String codigo, String codtipo, String nombre, String usuario, String contrasenia){
    ec.update(log_Usuarios(codigo, codtipo, nombre, usuario, contrasenia));
  }
  void deleteE(String codigo, String codtipo, String nombre, String usuario, String contrasenia){
    ec.delete(log_Usuarios(codigo, codtipo, "", "", ""));
  }
  bool selE(String usuario, String contrasenia){
    return ec.selection(log_Usuarios("", "", "", usuario, contrasenia));
  }
}