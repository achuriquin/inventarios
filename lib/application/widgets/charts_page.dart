
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inventarios/infrastructure/entity_manager/enlog_usuario.dart';


class ChartsPage extends StatelessWidget {
  ChartsPage({Key? key}) : super(key: key);
  enLog_usuarios cn = enLog_usuarios();
 
List<dynamic> _data = [{"descripcion":"Equipo_proteccion", "codigo":"tip00001"}, {"descripcion":"Implementos_bioSeguridad", "codigo":"tip00002"}, {"descripcion":"Materiales_escritorio", "codigo":"tip00003"}, {"descripcion":"Materiales_primerosAuxilios", "codigo":"tip00005"}, {"descripcion":"Materiales_contruccion", "codigo":"tip00006"}, {"descripcion":"Materiales_acero", "codigo":"tip00007"}, {"descripcion":"Fenolicos_maderas", "codigo":"tip00008"}, {"descripcion":"Accesorios_sanitarios", "codigo":"tip00009"}, {"descripcion":"Accesorios_electricos", "codigo":"tip00010"}, {"descripcion":"Accesorios_posoTierra", "codigo":"tip00011"}, {"descripcion":"Material_ceramico", "codigo":"tip00012"}, {"descripcion":"Material_pinturas", "codigo":"tip00013"}, {"descripcion":"Material_perecible", "codigo":"tip00014"}, {"descripcion":"Combustibles_lubricantes", "codigo":"tip00015"}, {"descripcion":"Materiales_techo", "codigo":"tip00016"}, {"descripcion":"Arboles_arbustos", "codigo":"tip00017"}];
List<dynamic> _dado=[];
String dropdownValue = 'descripcion';

 error() async{
List<dynamic> _date=[""]; 
  cn.selectE("select descripcion ,codigo from tipo_materiales ", _date);
	return _date;
}
  
  
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [

            Container(
              child:  ListView.builder(
                itemCount: _data.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(_data[index]["codigo"],style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white)),
                    subtitle: Text(_data[index]["descripcion"].toString(),style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white)),
                  );
                }
                ),
            ),
        
              
            
            SizedBox(
                  height: 40.h,
                ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 87.h,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    stops: [0, 1],
                    colors: [
                      Color(0xff121421),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      //funcion de reconocimiento de usuario y contraseña
                      onTap: () {
                        //SqlConn.readData("select * from usuarios");
                        error();
                        print(error());
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          color: const Color(0xff4A80F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          height: 56.h,
                          width: 319.w,
                          child: Center(
                              child: Text(
                            "lsitar",
                            style: TextStyle(
                                fontSize: 16.w,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void error2(){
    
    cn.selectE("select descripcion ,codigo from materiales ", _dado);
    print(_dado);
  }
}
