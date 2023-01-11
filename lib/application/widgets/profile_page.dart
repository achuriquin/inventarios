import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}): super(key: key);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  const Color(0xff121421),
      body: Container(
        padding: const EdgeInsets.all(8.0),
                    child: Text(
                    "Test",
                    style: TextStyle(
                        color: const Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
      ),
    );
  }
}