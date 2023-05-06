import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookRating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class secCustomItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SizedBox(

     height: 140,
     child: Row(
       mainAxisSize: MainAxisSize.max,
       children: [
         AspectRatio(
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
         ),
         SizedBox(
           width: MediaQuery.of(context).size.width * .6,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('harry potter and the Goblet of Fire book ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: KGtSectraFine,
                fontWeight:FontWeight.w300 ,
                fontSize: 20,
              ), ),
               SizedBox(height: 5,),
               Text('j.k.Rowling',
              style: TextStyle(
                fontFamily: KGtSectraFine,
                    color: Colors.white54,
              ), ),
               SizedBox(height: MediaQuery.of(context).size.height *.03,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                        Text('19.19',
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold),
                          ),

                   bookRating(),
                 ],
               ),
             ],
           ),
         ),

       ],
     ),
   );
  }

}