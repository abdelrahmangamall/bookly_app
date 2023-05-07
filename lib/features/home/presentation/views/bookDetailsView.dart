import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetailsBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookDetailsView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor[900],
      body: bookDetailsBody(),
    );
  }

}