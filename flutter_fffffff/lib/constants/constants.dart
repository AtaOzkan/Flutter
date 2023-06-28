import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const anaRenk = Colors.pink;
  static const String baslikText = "Ortalama Hesaplama";

  static final baslikTextStyle = GoogleFonts.quicksand(
      fontSize: 25, fontWeight: FontWeight.w600, color: anaRenk);

  static final BorderRadius borderRadius = BorderRadius.circular(30);

  static final kutuIciRenkler = Constants.anaRenk.shade200.withOpacity(0.3);

}
