import 'package:sql_conn/sql_conn.dart';

import 'conexion.dart';
import 'package:inventarios/domain/entities/log_usuarios.dart';


class conLog_usuarios {
  conexion con= conexion();
  conLog_usuarios(){
    con=conexion();
  }
  void select(){
    con.read("select * from usuarios");
  }

  void insert(log_Usuarios dato){
    con.write(
      "insert into usuarios values('${dato.Codigo}','${dato.codigoTipo}','${dato.Nombres}','${dato.Usuario}','${dato.Contrasenia}')");
    
  }
  void update(log_Usuarios dato){
    con.write(
      "update tipo_usuarios set nombre='${dato.Nombres}',usuario='${dato.Usuario}', contraseña='${dato.Contrasenia}' where codigo='${dato.Codigo}'");
  }
  void delete(log_Usuarios dato){
    con.write(
      "delete from tipo_usuarios where codigo='${dato.Codigo}'");
  }
  bool  selection(log_Usuarios dato){
      var res = SqlConn.readData("SELECT * FROM usuarios WHERE usuario ='${dato.Usuario}' AND contraseña='${dato.Contrasenia}'");
      bool ex = false;
      if(res==true){
        ex=true;
      }
      return ex;
  }
     
}