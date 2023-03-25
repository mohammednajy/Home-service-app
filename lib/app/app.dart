import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_home_app/app/routes/route_constants.dart';
import 'package:handy_home_app/app/routes/routes_generator.dart';

import '../presentation/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  MyApp._internal(); 

  static final _instance = MyApp._internal(); 

  factory MyApp() => _instance; 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        initialRoute: RouteConstants.splashRoute,
        onGenerateRoute: RouteGenerator.generateRoutes,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}