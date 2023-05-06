import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bookRating extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Row(

     children: [
       Icon(FontAwesomeIcons.solidStar,
       color: Colors.yellow[600],),
        SizedBox(width: 5,),
        Text('4.8',
        style: Styles.textStyle16,),
       SizedBox(width: 5,),
       Text('(245)',
       style: Styles.textStyle14,)
     ],
   );
  }

}