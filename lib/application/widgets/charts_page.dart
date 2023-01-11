import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartsPage extends StatelessWidget{
  const ChartsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: Container(
        child: Text(
                    "Siniestro",
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
      ),
    );
  }
}