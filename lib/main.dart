import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      title: "Smart Office",
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: 'Nato Sans',
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFF2F2F2),
          //secondary: Color(0xFFF4AE47),
          surface: Color(0xFFC4C4C4),
          background: Color(0xFFFFFFFF),
          error: Color(0xFFB00020),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Color(0xFF464646),
          ),
          headline2: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0xFF464646),
          ),
          headline3: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF464646),
          ),
          headline4: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFFBDBDBD),
          ),
          headline5: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xFFBDBDBD),
          ),
          headline6: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF464646),
          ),
        ),
      )
    ),
  );
}
