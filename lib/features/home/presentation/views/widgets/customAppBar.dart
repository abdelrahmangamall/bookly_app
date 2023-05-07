import 'package:bookly_app/core/utils/appRouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';

class customAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(KPrimaryLogo,
          height: 40,
          width: 100,),
        IconButton(onPressed: (){
           GoRouter.of(context).push(appRouter.KsearchView);
        },
          icon: Icon(FontAwesomeIcons.magnifyingGlass),),

      ],
    );
  }

}