import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'description.dart';
import 'multi_screen.dart';
import 'mylavelapp.dart';
import 'outline_btnScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            OutLine(iconData:Icons.favorite,color: kBlueIcon.withOpacity(.5),function: (){print('object');}, colorb: Colors.grey,),
            OutLine(iconData:Icons.person,color: kBlueIcon.withOpacity(.5),function: (){print('object2');}, colorb: Colors.grey,),
            SizedBox(width: 16,)
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lest\'s Play" ,style: TextStyle(fontSize: 32,color:kRedFont,fontWeight: FontWeight.bold,fontFamily: StringFamily ),),
                SizedBox(height: 8,),
                SizedBox(height: 8,),
                Text("Be the frist!" ,style: TextStyle(fontSize: 18,color: kGreyFont,fontFamily: StringFamily ),),
                SizedBox(height: 24,),

                MyLavelapp(image:"images/bags.png",subTitle: "Level 1",titel: "Ture & False",function: (){Navigator.push(context,MaterialPageRoute(builder: (context){return DescriptionScreen();}));},iconData:Icons.check ,color: [kL12,kL1],),
                MyLavelapp(image:"images/ballon-b.png",subTitle: "Level 1",titel: "Ture & False",function: (){print('1');},iconData:Icons.play_arrow ,color: [kL2,KL22],),




              ],
            ),
          ),
        ),);
  }
}
