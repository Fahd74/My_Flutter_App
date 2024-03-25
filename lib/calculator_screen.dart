import 'package:flutter/material.dart';
import 'package:my_flutter_app/calculator_button.dart';

class CalculatorScreen extends StatefulWidget{
  static const String routeName = 'calculator-screen';

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  resText,
                style: TextStyle(
                  fontSize: 25
                ),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(text:'7',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'8',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'9',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'+',onButtonClick:onOperatorClick,),

                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(text:'4',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'5',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'6',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'-',onButtonClick:onOperatorClick,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(text:'1',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'2',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'3',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'*',onButtonClick:onOperatorClick,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(text:'.',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'0',onButtonClick:onDigitClick,),
                  CalculatorButton(text:'/',onButtonClick:onOperatorClick,),
                  CalculatorButton(text:'=',onButtonClick:onEqualClick,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onDigitClick(String text){
    resText += text ;
    setState( () {
      
    });
  }
  String lhs = '';
  String operator = '';
  void onOperatorClick(String clickedOperator){
    if(operator.isEmpty) {
      lhs = resText;
    }
    else{
      String rhs = resText ;
      lhs = calculate(lhs,operator,rhs);
    }
    operator = clickedOperator ;
    resText = '';
  }
  String calculate(String lhs, String operator, String rhs){
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double res = 0.0 ;
    if(operator == '+'){res = num1 + num2 ;}
    else if(operator == '-'){res = num1 - num2 ;}
    else if(operator == '*'){res = num1 * num2 ;}
    else if(operator == '/'){res = num1 / num2 ;}
    return res.toString() ;
  }
  void onEqualClick(String text){
    String rhs = resText;
    resText = calculate(lhs, operator, rhs);
    lhs = '';
    setState(() {

    });
  }
}