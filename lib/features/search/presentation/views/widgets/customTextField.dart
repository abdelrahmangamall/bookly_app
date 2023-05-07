import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customTextField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return   TextField(
    decoration: InputDecoration(
      focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white60
          ),
          borderRadius: BorderRadius.circular(15)
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white60
          ),
          borderRadius: BorderRadius.circular(15)
      ),
      hintText: 'Enter your Book name ',
      label: Text('Search',
        style: TextStyle(
            color: Colors.white
        ),),
      suffixIcon: IconButton(
        onPressed: (){
        },
        icon: Opacity(opacity: .8,
            child:  Icon(FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            )
        ),
      ),
    ),
  );
  }

}