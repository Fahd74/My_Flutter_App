import 'package:flutter/material.dart';
import 'package:my_flutter_app/calculator_screen.dart';
import 'package:my_flutter_app/counter_screen.dart';
import 'package:my_flutter_app/home_screen.dart';

class LoginScreen extends StatelessWidget{
  static const String routeName = 'Login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body:
      Container(
        child: Column(
          children: [
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      },
                    child: Text('Home'),
                ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(CounterScreen.routeName);
              },
              child: Text('Counter'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(CalculatorScreen.routeName);
              },
              child: Text('Calculator'),
            ),
          ],
        ),
      ),
    );
  }
}