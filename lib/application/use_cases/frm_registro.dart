import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:inventarios/application/use_cases/frm_home.dart';
import 'package:inventarios/application/use_cases/frm_login.dart';
import 'package:inventarios/infrastructure/entity_manager/enlog_usuario.dart';
import 'package:sql_conn/sql_conn.dart';

//LoginPage
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

final txtusuTU = TextEditingController();
final txtconTU = TextEditingController();
final txtnomTU = TextEditingController();
List<dynamic> _date=[];
List<String> tipo_usuario = <String>["Administrador", "Usuario"];
String dropdownValue = 'Invitado';

class _RegisterPageState extends State<RegisterPage> {
  enLog_usuarios cn = enLog_usuarios();

  bool isRememberTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 66.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Hero(
                    tag: "Registro de usuarios",
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        "Registro de usuarios",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34.w,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    " Nombre",
                    style: TextStyle(
                      color: const Color(0xffffffff).withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: TextField(
                    style: const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    controller: txtnomTU,
                    decoration: const InputDecoration(
                      hintText: "  Nombre",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  //separador de elementos
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    " Usuario",
                    style: TextStyle(
                      color: const Color(0xffffffff).withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.w,
                    ),
                  ),
                ),
                SizedBox(
                  //separador de elementos
                  height: 20.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: TextField(
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                    controller: txtusuTU,
                    decoration: const InputDecoration(
                      hintText: "  Usuario",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    " Contraseña",
                    style: TextStyle(
                      color: const Color(0xffffffff).withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: TextField(
                    style: const TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    obscureText: true,
                    controller: txtconTU,
                    decoration: const InputDecoration(
                      hintText: "   Contraseña",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  //separador de elementos
                  height: 20.h,
                ),
                //////////////////////////////////////////////////////

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
                  items: <String>["Administrador", "Usuario", "Invitado"]
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

                ////////////////////////////////////////////////////
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
                            registrar();
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
                          //regresar al anterior formulario
                          onTap: () {
                            Get.back();
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
                                "Regresar",
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

  void registrar() async {
    var res = await SqlConn.readData("select TOP 1 * from usuarios ORDER BY codigo DESC");             
    
    _date=jsonDecode(res.toString());
  int num =0;
  String txt="";
  txt=_date[num]["codigo"];
  
  int cod=int.parse(txt.substring(3));
    cod++;
  String txt1="usu$cod";

    cn.insertE(txt1, "tus10002", txtnomTU.text, txtusuTU.text, txtconTU.text);
    
    
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
              Text('Usuario creado con exito'),
              
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
            child: const Text('Iniciar Secion'),
            onPressed: () {
              Get.to(LoginPage());
            },
          ),
        ],
      );
    },
  );
}
  
}
