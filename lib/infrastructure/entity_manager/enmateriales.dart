import 'package:inventarios/domain/entities/materiales.dart';
import 'package:inventarios/infrastructure/controllers/conMateriales.dart';

class enMateriales{
  conMateriales ec =conMateriales();
  enMateriales(){
    ec=conMateriales();
  }
  void selectE(){
    ec.select();
  }
  void insertE(String codigo, String cotipo, String descripcion, String medida, String precio, String stock){
    ec.insert(Materiales(codigo, cotipo, descripcion, medida, precio, stock));
  }
  void updateE(String codigo, String cotipo, String descripcion, String medida, String precio, String stock){
    ec.update(Materiales(codigo, cotipo, descripcion, medida, precio, stock));
  }
  void deleteE(String codigo, String cotipo, String descripcion, String medida, String precio, String stock){
    ec.delete(Materiales(codigo, "", "", "", "", ""));
  }
  //bool selE(String usuario, String contrasenia){
  //  return ec.selection(log_Usuarios("", "", "", usuario, contrasenia));
  //}
}