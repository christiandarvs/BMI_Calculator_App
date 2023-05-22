import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kActivecardColor = Color.fromARGB(255, 104, 112, 168);

const kInactivecardColor = Color.fromARGB(255, 179, 183, 215);

final kButtonTextTheme =
    GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold);
final kTextHeightTheme = GoogleFonts.poppins(
    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40);
final kTextLabelTheme = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 19,
);
final kAppBarTextTheme = GoogleFonts.poppins(
    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
const String kTitle = 'BMI Calculator';
const String kButtonLabel = 'Calculate your bmi';
const kAppBarBackgroundColor = Color.fromARGB(255, 54, 93, 172);
final kResultTextTheme = GoogleFonts.poppins(
    color: const Color.fromARGB(255, 134, 189, 179),
    fontWeight: FontWeight.bold,
    fontSize: 35);
final kBMITextTheme = GoogleFonts.poppins(
    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 70);

enum Gender { male, female }
