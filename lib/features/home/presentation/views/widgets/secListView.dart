import 'package:bookly_app/core/utils/appRouter.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/secCustomListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class secListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: (){
       GoRouter.of(context).push(appRouter.KBookDetails);
     },
     child: ListView.builder(
       physics: const NeverScrollableScrollPhysics(),
       itemCount: 10,
       scrollDirection: Axis.vertical,
       itemBuilder: ( context, index) {
         return secCustomItem();
       },

      // height: MediaQuery.of(context).size.height * .5,

     ),
   );
  }


}