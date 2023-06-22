import 'package:flutter/material.dart';

class OutLine extends StatelessWidget {
  const OutLine({Key? key,required this.color,required this.iconData,required this.function, required this.colorb,this.shapeBorder=const CircleBorder()}) : super(key: key);
  final IconData iconData;
  final Color color;
  final Color colorb;
  final Function() function;
   final OutlinedBorder shapeBorder;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle().copyWith(shape: MaterialStatePropertyAll(shapeBorder),side: MaterialStatePropertyAll(BorderSide(color: colorb))),
        onPressed:function, child:Icon(iconData,color: color,));
  }
}
