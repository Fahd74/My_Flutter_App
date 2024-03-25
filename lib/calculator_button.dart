import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  String text ;
  Function onButtonClick ;
  CalculatorButton({required this.text,required this.onButtonClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: EdgeInsets.all(2),
          child: ElevatedButton(
              onPressed: (){
                onButtonClick(text);
              },
              child: Text(text,
              style: TextStyle(
                fontSize: 24
              ),
              )
          ),
        )
    );
  }
}