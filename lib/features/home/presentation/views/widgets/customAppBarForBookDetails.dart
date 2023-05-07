import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class bookDetailsAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(Icons.close,
      size: 30,),

      Icon(Icons.shopping_cart_outlined),
    ],
  );
  }

}