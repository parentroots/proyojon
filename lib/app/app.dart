import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:proyojon/features/splash/presentation/screen/splash_screen.dart';

class ProyojonApp extends StatelessWidget {
  const ProyojonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return GetMaterialApp(

          home: SplashScreen(),

        );
      },
    );
  }
}
