import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'multi_screen.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  int questionNamber = 0;
  int questionCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [kBlueBg, kL2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 75, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 44,
                    height: 44,
                    child: OutlinedButton(
                      style: ButtonStyle().copyWith(
                        side: MaterialStatePropertyAll(
                            BorderSide(color: Colors.white)),
                        shape: MaterialStatePropertyAll(
                          CircleBorder(),
                        ),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(8)),
                      ),
                      onPressed: ()
                        {                Navigator.push(context,MaterialPageRoute(builder: (context) =>MultiScreen(),));
                        },

                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // OutlinedButton(
                  //     style: ButtonStyle(
                  //       side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
                  //       shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
                  //     ),
                  //     onPressed: (){}, child:Row(
                  //   children: [
                  //     Icon(Icons.favorite,color: Colors.white,),
                  //     SizedBox(width: 8,),
                  //     Text('3',style: TextStyle(color: Colors.white),),
                  //
                  //   ],
                  // )),
                  // Stack(alignment: Alignment.center, children: [
                  //   SizedBox(
                  //     height: 56,
                  //     width: 56,
                  //     child: CircularProgressIndicator(
                  //       value: .7,
                  //       color: Colors.white,
                  //       backgroundColor: Colors.white12,
                  //     ),
                  //   ),
                  //   Text(
                  //     '05',
                  //     style: TextStyle(
                  //         fontFamily: 'Sf-Pro-Text',
                  //         fontSize: 24,
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ]),

                  // OutlinedButton(
                  //   onPressed: () {},
                  //   child: Icon(
                  //     Icons.favorite,
                  //     color: Colors.white,
                  //   ),
                  //   style: OutlinedButton.styleFrom(
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(25),
                  //       ),
                  //       side: BorderSide(color: Colors.white)),
                  // )
                ],
              ),
              Expanded(
                flex: 3,
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.all(34),
                        child: Image(image: AssetImage("images/ballon-b.png")))),
              ),

              Text(
                "question $questionNamber of $questionCount",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Sf-Pro-Text',
                    color: Colors.white60),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "In Which City of Germany Is the largest Post?",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Sf-Pro-Text',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 48,
              ),
              Spacer(),
              // btn(iconData: Icons.check_rounded,title: 'Breman',color: Colors.white,colortitle: kL2,),
              // btn(iconData: Icons.check_rounded,title: 'Breman',color: Colors.white,colortitle: kL2,),
              btn(iconData: Icons.check_rounded,title: 'Gaza',color: KG1,colortitle: Colors.white,),
              // SizedBox(height: 8,),
              Spacer(),




            ],
          ),
        ),
      ),
    );
  }
}

class btn extends StatelessWidget {
  btn({
    required this.iconData,required this.title,required this.color,required this.colortitle,  });
  String title;
  IconData iconData ;
  Color color;
  Color colortitle;
  // Function ()function;


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor:color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),

            ),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12)
        ),
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: Center(
                    child: Text(
                      title,
                      style: TextStyle(color: colortitle,fontSize: 18,fontWeight: FontWeight.w500),
                    ))),
            Icon(Icons.check_rounded, )
          ],
        ),
      ),
    );
  }
}
