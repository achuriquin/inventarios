import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventarios/application/use_cases/frmManTipoEmpleado.dart';

import 'package:inventarios/application/use_cases/frm_registro.dart';
import 'package:inventarios/application/use_cases/frm_home.dart';
import 'package:inventarios/infrastructure/entity_manager/enlog_usuario.dart';
import 'package:sql_conn/sql_conn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginpageState createState() => _LoginpageState();
}

final txtusuTU = TextEditingController();
final txtconTU = TextEditingController();

class _LoginpageState extends State<LoginPage> {
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
                    tag: "Logueo inicial",
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        "Iniciar sesion",
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
                    "  Usuario",
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
                            error();
                            //compro();
                            //comprobar();
                            // Get.to(()=>const HomePage(),transition: Transition.downToUp);
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
                                "Ingresar",
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
                          //ir a registro de nuevo usuario
                          onTap: () {
                            Get.to(() => const RegisterPage(),
                                transition: Transition.downToUp);
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
                          //funcion de reconocimiento de usuario y contraseña
                          onTap: () {
                            Get.to(() => const HomePage(),
                                transition: Transition.downToUp);
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
                                "Invitado",
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

  void compro() {
    var x;
  }

  void comprobar() async {
    //var res= await
    //SqlConn.readData("SELECT * FROM usuarios WHERE usuario ='${txtusuTU.text}' AND contraseña='${txtconTU.text}'");

    //if(res=true){
    if (cn.selE(txtusuTU.text, txtconTU.text)) {
      Get.to(() => const HomePage(), transition: Transition.downToUp);
    } else {
      Get.to(() => const RegisterPage(), transition: Transition.downToUp);
    }
    await SqlConn.disconnect();
  }

  void error() async {
    var res = await SqlConn.readData(
        "select * from usuarios where usuario='${txtusuTU.text}' AND contraseña='${txtconTU.text}'");

    if (res != "[]") {
      Get.to(() => const HomePage(), transition: Transition.downToUp);
    } else {
      Get.to(() => const RegisterPage(), transition: Transition.downToUp);
    }
    //_date=jsonDecode(res.toString());

    //print(_date.toString());
    // _data = jsonDecode(_data.toString());
  }
}
