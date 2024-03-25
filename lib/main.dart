import 'package:flutter/material.dart';
import 'package:my_flutter_app/calculator_screen.dart';
import 'package:my_flutter_app/counter_screen.dart';
import 'package:my_flutter_app/home_screen.dart';
import 'package:my_flutter_app/login_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        CounterScreen.routeName: (context) => CounterScreen(),
        CalculatorScreen.routeName: (context) => CalculatorScreen(),
      },
    );
  }
  
}