import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'package:inventarios/application/use_cases/frm_inicial.dart';
import 'package:inventarios/application/use_cases/frm_home.dart';

//ejecutar en la terminal "flutter pub add get"  es una dependencia que permite el uso de comandos abreviados 
//ejecutar en la terminal "flutter pub add flutter_screenutil" es una dependencia que permite la muestra de objetos en pantalla con multiples resoluciones
//ejecutar en la terminal "flutter pub add flutter_svg" esto permite que flutter pueda usar archivos svg
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder:(context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const frmInicial(),
      ),
    );
  }
}

