import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
             SizedBox(
               height: 45,
               width: 150,
               child: TextButton(onPressed: () {  },
                 style: TextButton.styleFrom(
                   shape: RoundedRectangleBorder(borderRadius:
                   BorderRadius.only(topLeft:Radius.circular(10),
                       bottomLeft: Radius.circular(10))),
                     backgroundColor: Colors.white,
                     foregroundColor: Colors.black),
                 child: Text('19.99',
                 style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),),
             ),
        SizedBox(
          height: 45,
          width: 150,
          child: TextButton(onPressed: () {  },
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius:
                BorderRadius.only(topRight:Radius.circular(10),
                    bottomRight: Radius.circular(10))),
                backgroundColor: Color(0xffef8262),
           foregroundColor: Colors.white ),
            child: Text('Free preview',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),),
        ),
      ],
    );
  }

}