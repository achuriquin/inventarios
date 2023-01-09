import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventarios/infrastructure/controllers/conexion.dart';
import 'package:inventarios/infrastructure/entity_manager/entipo_usuario.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key?  key}):super(key: key);
  @override
  _LoginpageState createState() => _LoginpageState();
}

final txtusuTU = TextEditingController();
final txtconTU = TextEditingController();

class _LoginpageState extends State<LoginPage>{
enTipo_usuario cn = enTipo_usuario();

  bool isRememberTapped = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  const Color(0xff121421),
      body:SafeArea(
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
                      child: Text("Iniciar sesion",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34.w,
                        fontWeight: FontWeight.bold
                      ),
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
                        color:  const Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w,
                      ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                      ),
                      child:  TextField(
                        style: TextStyle(
                          color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        ),
                        controller: txtconTU,
                        decoration: InputDecoration(
                          hintText: "  Usuario",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
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
                    SizedBox(height: 25.h,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                      ),
                      child:  TextField(
                        style: TextStyle(
                          color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        ),
                        obscureText: true,
                        controller: txtconTU,
                        decoration: InputDecoration(
                          hintText: "   Contraseña",                       
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0),
                          
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
                            stops: [0,1],
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
                              onTap: () =>cn.selectE(),
                              child: Ink(
                                decoration: BoxDecoration(
                                  color: const Color(0xff4A80F0),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Container(
                                  height: 56.h,
                                  width: 319.w,
                                  child: Center(child: Text("Ingresar",style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white),)),
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
}