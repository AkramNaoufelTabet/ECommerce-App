

import 'package:flutter/material.dart';

import 'constant.dart';
import 'routs.dart';
import 'screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce app ',
      
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey[900]
        ),
        textTheme: TextTheme(
          bodyText1:TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor) )
      ),
      //home: SplashScreen()
      initialRoute: SplashScreen.routename,
      routes: routes,
    );
    throw UnimplementedError();
  }

}


















