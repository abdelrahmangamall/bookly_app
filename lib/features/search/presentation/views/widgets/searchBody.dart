import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/secListView.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/customTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .07,
      left: 10,right: 10,bottom: 5),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextField(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Result',
                    style: Styles.textStyle20,
                  ),
                //  SizedBox(height: 20,),
                ],
              ),
            ),


          SliverFillRemaining(
            child: secListView(),
          ),
        ],
      ),
    );
  }
}
