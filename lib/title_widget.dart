import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget{
  String title ;
  TitleWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6,horizontal: 4),
          alignment: Alignment.center,
          color: Color(0xd79b00d2),
          child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
  }
}