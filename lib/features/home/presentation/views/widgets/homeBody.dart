import 'package:bookly_app/features/home/presentation/views/widgets/bookRating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/secCustomListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customAppBar.dart';
import 'listView.dart';

class homeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 20,left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customAppBar(),
        listView(),
        Text('Best Seller ',
          style: TextStyle(

            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20,),
        Row(
        //  mainAxisAlignment: MainAxisAlignment.,
          children: [
            secCustomItem(),

          ],
        ),

      ],
    ),
  );
  }

}

