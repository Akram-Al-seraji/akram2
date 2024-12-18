import 'package:flutter/material.dart';
import 'package:akram2/akram_views/ak_home.dart';
import 'package:akram2/akram_views/ak_login.dart';

const String baseRoute='/';
const String homeRoute='/home';
const String loginRout='/login';

Map<String, WidgetBuilder>appRoutes={
  baseRoute:(context)=>LoginPage(),
  // homeRoute: (context)=>HomePage(),
  loginRout:(context)=>LoginPage(),
};

class RouterManager{

  static final GlobalKey<NavigatorState>navigatorKey=GlobalKey<NavigatorState>();


  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case homeRoute:
      // return MaterialPageRoute(builder: (_)=>HomePage());
      case loginRout:
        return MaterialPageRoute(builder: (_)=>LoginPage());
      default:
        return MaterialPageRoute(builder: (_)=>LoginPage());  }
  }
  static void navigateTo(String routeName,{Object?arguments}){
    navigatorKey.currentState?.pushNamed(routeName,arguments: arguments);



  }

  static void pop(){
    navigatorKey.currentState?.pop();
  }


}

