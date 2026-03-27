import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Backgrounds
  static const Color background = Color.fromRGBO(15, 15, 15, 1);
  static const Color card = Color.fromRGBO(19, 19, 19, 0.8);
  static const Color textField = Color.fromRGBO(22, 22, 22, 1);

  // Text
  static const Color heading = Color.fromRGBO(239, 238, 232, 1);
  static const Color textPrimary = Color.fromRGBO(239, 238, 232, 1);
  static final Color textMuted = Color.fromRGBO(139, 138, 132, 1);

  // Buttons
  static const Color buttonPrimary = Color.fromRGBO(217, 217, 217, 1);
  static const Color buttonPrimaryText = Color.fromRGBO(15, 15, 15, 1);
  static final Color buttonSecondary = Color.fromRGBO(33, 33, 33, 1);
  static const Color buttonSecondaryText = Color.fromRGBO(239, 238, 232, 1);

  // Borders & Dividers
  static final Color divider = Color.fromRGBO(47, 47, 47, 1);
  static final Color border = Color.fromRGBO(46, 46, 46, 1);

  // Icons
  static const Color iconInactive = Color.fromRGBO(141, 141, 141, 1);
  static const Color iconInactiveBackground = Color.fromRGBO(19, 19, 19, 1);
  static const Color iconActive = Color.fromRGBO(14, 14, 14, 1);
  static const Color iconActiveBackground = Color.fromRGBO(227, 227, 227, 1);

  // Medicine Status
  static const Color statusTaken = Color.fromRGBO(101, 138, 92, .4);
  static const Color statusMissed = Color.fromRGBO(143, 96, 96, .3);
  static const Color statusUpcoming = Color.fromRGBO(132, 134, 137, .3);

  // Cabinet Stock
  static const Color stockHigh = Color.fromRGBO(101, 138, 92, .4);
  static const Color stockMedium = Color.fromRGBO(214, 206, 137, .3);
  static const Color stockLow = Color.fromRGBO(143, 96, 96, .3);

  // Overlays
  static const Color overlayLight = Colors.white24;
  static final Color overlayDark = Colors.grey[800]!;
}
