import 'package:flutter/material.dart';
import 'package:tourists/theme/colors.dart';

class MyFonts {
  TextStyle mainfont = TextStyle(
    fontFamily: 'myfont',
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w400
  );
    TextStyle subfont = TextStyle(
      fontFamily: 'myfont',
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w800
      );
        TextStyle bluemainfont = TextStyle(
      fontFamily: 'myfont',
      fontSize: 16,
      color: MyColors().maincolor,
      fontWeight: FontWeight.w700);
  TextStyle blueksubfont = TextStyle(
      fontFamily: 'myfont',
      fontSize: 14,
      color: MyColors().maincolor,
      fontWeight: FontWeight.w400);
  TextStyle blackksubfont = TextStyle(
      fontFamily: 'myfont',
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400);

  TextStyle greyfont = TextStyle(
      fontFamily: 'myfont',
      fontSize: 14,
      color:  const Color.fromARGB(255, 113, 113, 113),
      fontWeight: FontWeight.w400);
}

