import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bookRating extends StatelessWidget{
  final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
   return Row(
mainAxisAlignment:mainAxisAlignment,
     children: [
       Icon(FontAwesomeIcons.solidStar,
       color: Colors.yellow[600],
       size: 14,),
        SizedBox(width: 6,),
        Text('4.8',
        style: Styles.textStyle14,),
       SizedBox(width: 6,),
       Text('(245)',
       style: Styles.textStyle16,)
     ],
   );
  }

  bookRating({this.mainAxisAlignment = MainAxisAlignment.start}
      );
}