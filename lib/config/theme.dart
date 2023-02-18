// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var primaryColorString = '#F44849';
var secondaryColorString = '#111827';

class AppTheme {
  static bool isLightTheme = true;

  static ThemeData getTheme() {
    if (isLightTheme) {
      return lightTheme();
    } else {
      return darkTheme();
    }
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      subtitle1: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(color: base.subtitle1!.color, fontSize: 15)),
      subtitle2: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(
              color: base.caption!.color,
              fontSize: 15,
              fontWeight: FontWeight.w500)),
      bodyText1: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(color: base.bodyText1!.color, fontSize: 14)),
      bodyText2: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(color: base.bodyText2!.color, fontSize: 16)),
      button: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(
              color: base.button!.color,
              fontSize: 14,
              fontWeight: FontWeight.w500)),
      headline1: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(
              color: base.subtitle1!.color,
              fontSize: 15,
              fontWeight: FontWeight.w500)),
      caption: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(color: base.caption!.color, fontSize: 12)),
      headline4: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(color: base.headline4!.color, fontSize: 24)),
      headline3: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(
              color: base.headline3!.color,
              fontSize: 40,
              fontWeight: FontWeight.w600)),
      headline2: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(color: base.headline2!.color, fontSize: 60)),
      headline5: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(
              color: base.headline5!.color,
              fontSize: 20.5,
              fontWeight: FontWeight.w700)),
      headline6: GoogleFonts.libreBaskerville(
          textStyle: TextStyle(
              color: base.headline6!.color,
              fontSize: 20,
              fontWeight: FontWeight.w500)),
      overline: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(color: base.overline!.color, fontSize: 10)),
    );
  }

  static ThemeData lightTheme() {
    Color primaryColor = HexColor(primaryColorString);
    Color secondaryColor = HexColor(secondaryColorString);
    final ColorScheme colorScheme = ColorScheme.light().copyWith(
      primary: secondaryColor,
      secondary: Colors.white,
    );

    final ThemeData base = ThemeData.light();
    return base.copyWith(
      appBarTheme: AppBarTheme(color: Colors.white),
      popupMenuTheme: PopupMenuThemeData(color: Colors.white),
      iconTheme: IconThemeData(color: Color(0xff2b2b2b)),
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      splashColor: Colors.white.withOpacity(0.1),
      hoverColor: Colors.transparent,
      splashFactory: InkRipple.splashFactory,
      highlightColor: Colors.transparent,
      accentColor: primaryColor,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: HexColor("#fefefe"),
      backgroundColor: Colors.white,
      errorColor: Colors.red,
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      indicatorColor: primaryColor,
      disabledColor: HexColor("#9CA3AF"),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      cardColor: HexColor("#F9FAFB"),
    );
  }

  static ThemeData darkTheme() {
    Color primaryColor = HexColor(primaryColorString);
    Color secondaryColor = HexColor(secondaryColorString);
    final ColorScheme colorScheme = ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      appBarTheme: AppBarTheme(color: Colors.grey[700]),
      popupMenuTheme: PopupMenuThemeData(color: Colors.black),
      colorScheme: colorScheme,
      iconTheme: IconThemeData(color: Colors.white),
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.transparent,
      backgroundColor: Color(0xff171725),
      scaffoldBackgroundColor: HexColor("#171725"),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
      platform: TargetPlatform.iOS,
      disabledColor: HexColor("#6B7280"),
      cardColor: HexColor("#1F2937"),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
