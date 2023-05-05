import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/customListViewItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customAppBar.dart';

class homeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 20,left: 10),
    child: Column(
      children: [
        customAppBar(),
        customListItem(),
        
      ],
    ),
  );
  }

}

