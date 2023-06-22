import 'package:flutter/material.dart';

import 'colors.dart';
import 'outline_btnScreen.dart';

class MyLavelapp extends StatelessWidget {
     MyLavelapp({Key? key,required this.function,required this.titel,required this.subTitle,required this.image,required this.iconData,required this.color}) : super(key: key);
  Function() function;
  String  titel ;
  String  subTitle;
  String  image;
  IconData iconData;
   List<Color> color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            margin: EdgeInsets.only(top: 54,bottom: 24),
          width: double.infinity,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:color,),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            SizedBox(width: 44,height: 44,child: OutLine(iconData:iconData,color: Colors.white,colorb: Colors.white,function: (){},shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),)),
            SizedBox(height: 12,),
            Text(titel ,style: TextStyle(fontSize: 16,color: Colors.white60,fontFamily: StringFamily ),),
              SizedBox(height: 8,),

              Text(subTitle ,style: TextStyle(fontSize: 32,color: Colors.white,fontFamily: StringFamily ,fontWeight: FontWeight.bold),),

          ],),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Image.asset(image),
          )

      ]),
    );
  }
}
