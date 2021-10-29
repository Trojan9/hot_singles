import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hot_singles/utils/colors.dart';

class Appname extends StatelessWidget {
  late double size;
  Appname({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Hot Singles",
        style: GoogleFonts.pacifico(
          color: logocolor,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ));
  }
}
