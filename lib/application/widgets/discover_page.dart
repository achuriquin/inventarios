import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inventarios/application/widgets/discover_card.dart';
import 'package:inventarios/application/widgets/discover_small_card.dart';
import 'package:inventarios/application/widgets/icons.dart';
import 'package:inventarios/application/widgets/svg_asset.dart';
import 'package:inventarios/application/widgets/category_boxes.dart';
import '../use_cases/frm_entrada_materiales.dart';
import 'package:inventarios/application/use_cases/frm_agregar_material.dart';

class DiscoverPage extends StatefulWidget{
  const DiscoverPage ({Key? key}) :super(key: key);
  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}
class _DiscoverPageState extends State<DiscoverPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Buscar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold)),
                  InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: onSearchIconTapped,
                    child: Container(
                      height: 35.w,
                      width: 35.w,
                      child: Center(
                        child: SvgAsset(
                          assetName: AssetName.search,
                          heigth: 24.w,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120.h,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 28.w,
                  ),
                  CategoryBoxes(
                    text: "Agregar materiales",
                    onPressed: (value) =>agregarMateriales(),
                  ),
                  CategoryBoxes(
                    text: "Ver todos los materiales",
                    onPressed: (value) => print(value),
                  ),
                  CategoryBoxes(
                    text: "Proveedores",
                    onPressed: (value) => print(value),
                  ),
                  CategoryBoxes(
                    text: "Clientes",
                    onPressed: (value) => print(value),
                  ),
                  CategoryBoxes(
                    text: "Informes",
                    onPressed: (value) => print(value),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Movimientos de almacen ",
                    style: TextStyle(
                        color: Color(0xff515979),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.w),
                  ),
                  GestureDetector(
                      onTap: onSeeAllTapped,
                      child: Text("Ver todos",
                          style: TextStyle(
                              color: Color(0xff4A80F0),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.w)))
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 176.w,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 28.w),
                  DiscoverCard(
                    tag: "Entrada de almacen",
                    onTap: onSleepMeditationTapped,
                    title: "Entrada al almacen",
                    subtitle: "Registrar entrada de materiales",
                  ),
                  SizedBox(width: 20.w),
                  DiscoverCard(
                    onTap: onDepressionHealingTapped,
                    title: "Salida de almacen",
                    subtitle: "Registrar una salida de almacen",
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.h),
            Padding(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                "Favoritos",
                style: TextStyle(
                    color: Color(0xff515979),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.w),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.w),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 19.w, mainAxisExtent:  125.w, mainAxisSpacing: 19.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "Material perecible",
                    gradientStartColor: Color(0xff13DEA0),
                    gradientEndColor: Color(0xff06B782),
                  ),
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "Electrodomesticos",
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                    icon:    SvgAsset(
                      assetName: AssetName.tape,
                      heigth: 24.w,
                      width: 24.w,
                    ),
                  ),
                  DiscoverSmallCard(
                    onTap: (){
                    },
                    title: "Utencilios de cocina",
                    gradientStartColor: Color(0xffFFD541),
                    gradientEndColor: Color(0xffF0B31A),
                  ),
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "Accesorios sanitarios",
                    icon:  SvgAsset(
                      assetName: AssetName.tape,
                      heigth: 24.w,
                      width: 24.w,
                    ),
                  ),
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "Aceros y     fierros",
                    icon: SvgAsset(
                      assetName: AssetName.heart,
                      heigth: 24.w,
                      width: 24.w,
                    ),
                  ),
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
  void onSeeAllTapped(){
//poner cosas aqupi en el futuro
  }
  void onSleepMeditationTapped(){
    Get.to(()=> DetailPage(),transition: Transition.rightToLeft);
  }
  void onDepressionHealingTapped(){
//poner cosas aqupi en el futuro
  }
  void onSearchIconTapped(){
//poner cosas aqupi en el futuro
  }
  void agregarMateriales(){
    Get.to(()=> Agregar_material(),transition: Transition.rightToLeft);
  }
}