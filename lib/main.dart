import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service2/screens/homePage.dart';
import 'package:service2/screens/typesPage.dart';
void main (){
  runApp(
      Service()
  );
}
class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: HomePage.id,
            routes: {
              HomePage.id:(context)=>HomePage(),
              TypesPage.id:(context)=> TypesPage(),
            },
          ),
    );
  }
}
