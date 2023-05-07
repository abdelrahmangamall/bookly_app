import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookRating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/customButton.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similarBookDetailsList.dart';
import 'package:flutter/cupertino.dart';
import 'customAppBarForBookDetails.dart';
import 'customListViewItem.dart';
class bookDetailsBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return SafeArea(
     child: Padding(
       padding: EdgeInsets.only(left: 10,right: 10,top: 5),

       child: Column(
         children: [
           bookDetailsAppBar(),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .25),
               child: customListItem()),
              Text('The Jungle Book',
              style: Styles.textStyle30,),
           SizedBox(height: 6,),
           Text('Rudyard Kipling',
           style: Styles.textStyle16,),
           SizedBox(height: 18,),
           bookRating(
             mainAxisAlignment: MainAxisAlignment.center,
           ),
           SizedBox(height: 30,),
           customButton(),
           SizedBox(height: 50,),
           Align(
             alignment: Alignment.centerLeft,
             child: Text('You can also like',
             style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),),
           ),
           similarBookDetailsList(),
         ],
       ),
     ),
   );
  }
}