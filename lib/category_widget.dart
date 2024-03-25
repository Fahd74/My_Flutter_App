import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget{
  String ImageTitle;
  String ImagePath;
  CategoryWidget({required this.ImageTitle,required this.ImagePath});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(ImagePath),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 4,vertical: 6),
          color: Color(0x969b00d2),
          child:
          Text(ImageTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
        ),
      ],

    );
  }
}