import 'package:flutter/material.dart';

abstract class AppColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  AppColors._();

  //PRIMARY PALETTE
  static const Color primaryPurple = Color(0xFF42258B);

  static const Color primaryOrange = Color(0xFFED701E);
  static const Color white = Color(0xFFFFFFFF);
  /* static const Color black = Color(0xFF000000); */
  static const Color black = Color(0xFF101A26);

  //SECONDARY PALETTE
  static const Color secondaryGreen = Color(0xFF36C079);
  static const Color secondaryOrange = Color(0xFFDE7A34);
  static const Color secondaryBlue = Color(0xFF3F75AE);
  static Color secondaryPurple = const Color(0xFF442E85).withOpacity(0.3);

  static const Color tetiaryPurple = Color(0xFF433476);
  static const Color unSelectedNavBarIconColor = Color(0xFF918F9B);

  //TextPark PALETTE
  static const Color headingOne = Color(0xFF1D2532);
  static const Color subHeading = Color(0xFF8B8B8B);
  static const Color subHeading2 = Color(0xFF9C9C9C);
  static const Color dateText = Color(0xFF1B2031);

  //NEUTRAL
  static const Color neutralN800 = Color(0xFF122535);
  static const Color neutralN600 = Color(0xFF2E4457);
  static const Color neutralN500 = Color(0xFF4D6173);
  static const Color neutralN400 = Color(0xFF98A7B4);
  static const Color neutralN300 = Color(0xFFC2CDD6);
  static const Color neutralN200 = Color(0xFFD9E1E8);
  static const Color neutralN100 = Color(0xFFE4EBF1);
  static const Color neutralN75 = Color(0xFFEDF2F7);
  static const Color neutralN50 = Color(0xFFF5F7FA);
}
