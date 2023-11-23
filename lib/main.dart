import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp
    (home: Homescreen(),
  ));
}

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 30.0),
       child: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             verticalSpace(10.0),
             Image.asset('images/menu.png',height: 24),
             verticalSpace(20),

             Container(
               width: Utility.screenWidth(context),
               height: 55.0,

               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(32.0)),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.blueGrey.withOpacity(0.7),
                       blurRadius: 20.0,
                       spreadRadius: 10.0,
                       offset: Offset(0, 10),

                     )
                   ]
               ),
               child: Row(
                 children: [
                   horizontalSpace(20.0),
                   Image.asset('images/search.png',height: 24),
                   horizontalSpace(40.0),
                   Expanded(
                     child: TextFormField(
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: "Search",
                         isDense: true,
                       ),
                     ),
                   )

                 ],
               ),
             ),

             verticalSpace(20.0),
             Expanded(
                 child: ListView(
                   children: [
                     Container(
                       width: Utility.screenWidth(context),
                       padding: EdgeInsets.all(20.0),
                         height: 200.0,

                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.all(Radius.circular(32.0)),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.blueGrey.withOpacity(0.7),
                               blurRadius: 20.0,
                               spreadRadius: 10.0,
                               offset: Offset(0, 10),

                             )
                           ]
                       ),
                       child: Row(
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("MEN"),
                             ],
                           ),
                           horizontalSpace(710),
                           Image.asset('images/thorr.jpg',height: 320,)
                         ],
                       )

                       ),
                     verticalSpace(20.0),
                     Container(
                         width: Utility.screenWidth(context),
                         padding: EdgeInsets.all(20.0),
                         height: 200.0,

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(32.0)),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.blueGrey.withOpacity(0.7),
                                 blurRadius: 20.0,
                                 spreadRadius: 10.0,
                                 offset: Offset(0, 10),

                               )
                             ]
                         ),
                         child: Row(
                           children: [
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("WOMEN"),
                               ],
                             ),
                             horizontalSpace(700),
                             Image.asset('images/womenn.jpg',height: 300,)
                           ],
                         )

                     ),
                     verticalSpace(20.0),
                     Container(
                         width: Utility.screenWidth(context),
                         padding: EdgeInsets.all(20.0),
                         height: 200.0,

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(32.0)),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.blueGrey.withOpacity(0.7),
                                 blurRadius: 20.0,
                                 spreadRadius: 10.0,
                                 offset: Offset(0, 10),

                               )
                             ]
                         ),
                         child: Row(
                           children: [
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("KIDS"),
                               ],
                             ),
                             horizontalSpace(725),
                             Image.asset('images/kidss.jpg',height: 300,)
                           ],
                         )

                     ),


                   ],
                 )
             )
           ],
         ),
       ),
     ),
   );
  }

  Widget verticalSpace(double space) {
    return SizedBox(height: space);

  }

 Widget horizontalSpace(double space) {
    return SizedBox(width: space);
 }

}

class Utility {
  static screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}





