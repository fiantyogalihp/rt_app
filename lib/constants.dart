import 'package:flutter/material.dart';

// * BASIC COLOR
const Color transparent = Color(0x00000000);
const Color black = Color.fromARGB(255, 0, 0, 0);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color grey = Colors.grey;
const Color blueLight = Color(0xFF64B5F6);

// * FONTWEIGHT
const FontWeight normal = FontWeight.normal;
const FontWeight medium = FontWeight.w500;
const FontWeight bold = FontWeight.bold;

// * SHADOW
List<BoxShadow> blurShadow = [
  const BoxShadow(
    color: grey,
    blurRadius: 4,
    spreadRadius: 2,
    offset: Offset(0, 5),
  )
];
List<BoxShadow> solidShadow = [
  const BoxShadow(
    color: grey,
    blurRadius: 2.0,
    spreadRadius: 0.0,
    offset: Offset(2.0, 2.0),
  )
];
