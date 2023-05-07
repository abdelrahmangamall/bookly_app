import 'package:flutter/cupertino.dart';

import 'customListViewItem.dart';

class listView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.only(top: 10),
     child: SizedBox(
       height: MediaQuery.of(context).size.height * .3,
       child: ListView.builder(

         scrollDirection: Axis.horizontal,
           itemBuilder: (context,index){
             return customListItem();
           },
       ),
     ),
     

   );
  }
}