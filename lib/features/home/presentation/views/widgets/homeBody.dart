import 'package:bookly_app/features/home/presentation/views/widgets/secListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customAppBar.dart';
import 'listView.dart';

class homeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(top: 20,left: 8,right: 8),
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
            ],
          ),
        ),
      ),
      SliverFillRemaining(
        child : Padding(
          padding: EdgeInsets.only(left: 8),
            child: secListView()),
      ),
    ],

  );
  }

}

