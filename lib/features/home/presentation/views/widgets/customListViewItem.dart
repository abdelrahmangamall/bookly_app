import 'package:flutter/material.dart';

class customListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return AspectRatio(
     aspectRatio: 2.7/4,
     child: Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(14),
        // color: Colors.blue,
         image: DecorationImage(fit: BoxFit.fill,
           image: AssetImage('assets/images/test_image.png'
           ),
         ),
       ),

     ),
   );
  }

}