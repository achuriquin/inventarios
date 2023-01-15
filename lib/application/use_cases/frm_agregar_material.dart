import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventarios/application/use_cases/frm_home.dart';
import 'package:inventarios/application/widgets/icons.dart';
import 'package:inventarios/application/widgets/svg_asset.dart';

import 'package:inventarios/infrastructure/entity_manager/enmateriales.dart';
import 'package:sql_conn/sql_conn.dart';

class Agregar_material extends StatefulWidget{
  Agregar_material({Key? key}):super(key: key);
  @override
  _Agregar_materialState createState()=>_Agregar_materialState();
}
final txtdescripcionMAT =TextEditingController();
final txtmedidaMAT=TextEditingController();
final txtprecioMAT=TextEditingController();
final txtcantidadMAT=TextEditingController();
final txttipomateMAT=TextEditingController();
List<dynamic> _date=[];
String dropdownValue = 'Equipo de proteccion';

class _Agregar_materialState extends State<Agregar_material>{
enMateriales cn= enMateriales();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  const Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Color(0xff121421),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 22.w, right: 22.w, top: 20.h, bottom: 10.h),
                    child: Material(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(360),
                            onTap: regresar,
                            child: Container(
                              height: 35.w,
                              width: 35.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                              ),
                              child: Center(
                                child: SvgAsset(
                                  assetName: AssetName.back,
                                  heigth: 20.w,
                                  width: 20.w,
                                ),
                              ),
                            ),
                          ),                          
                        ],
                      ),
                    ),
                  ),
                )
              ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(padding: EdgeInsets.only(left: 28.w),
                child: Hero(
                  tag: "Agregar nuevos Materiales",
                  child: Material(
                    color: Colors.transparent,
                    child: Text("Agregar nuevos Materiales",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.w,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: TextField(
                    style: const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    controller: txtdescripcionMAT,
                    decoration: const InputDecoration(
                      hintText: "  ¿Qué Material es?",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: TextField(
                    style: const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    controller: txtmedidaMAT,
                    decoration: const InputDecoration(
                      hintText: "  ¿Kilos, Litros, Galones, etc?",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    controller: txtprecioMAT,
                    decoration: const InputDecoration(
                      hintText: "  ¿Qué precio tiene?",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    controller: txtcantidadMAT,
                    decoration: const InputDecoration(
                      hintText: "  Cantidad",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(10),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      //<-- SEE HERE
                      borderSide: BorderSide(color: Colors.white, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      //<-- SEE HERE
                      borderSide: BorderSide(color: Colors.white, width: 0),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                  dropdownColor: Colors.grey.withOpacity(0.9),
                  value: dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>["Equipo de proteccion", "Acero", "Material ceramico"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  //separador de elementos
                  height: 20.h,
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
                            grabarMAT();
                            _showMyDialog();
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
                                "Registrar",
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
          ],
        ),
      ),
    );
  }
  void grabarMAT() async{
    var res = await SqlConn.readData("select TOP 1 * from materiales ORDER BY codigo DESC");
    _date=jsonDecode(res.toString());
  int num =0;
  String txt="";
  txt=_date[num]["codigo"];
  
  int cod=int.parse(txt.substring(3));
    cod++;
  String txt1="mat$cod";


    cn.insertE(txt1, "tip00002", txtdescripcionMAT.text, txtmedidaMAT.text, txtprecioMAT.text, txtcantidadMAT.text);
  }
  void regresar(){
    Get.back();
  }

Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Exito'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Material ingresado con exito'),
              
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Aceptar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Regresar'),
            onPressed: () {
              Get.to(HomePage());
            },
          ),
        ],
      );
    },
  );
}

}