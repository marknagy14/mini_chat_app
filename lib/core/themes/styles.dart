import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles{
  static TextStyle textStyle24 = const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600
  );

  static TextStyle textStyle48 = const TextStyle(
    //todo : replace here with color_app corresponding color 
    color: Colors.black,
    fontSize: 48,
    fontWeight: FontWeight.w700
  );

  static final TextStyle textStyle36 =  TextStyle(
    //todo : replace here with color_app corresponding color 
    color: Colors.black,
    fontSize: 36,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.josefinSans().fontFamily
  );
  



}