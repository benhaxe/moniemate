import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniemate/src/scaler/src/extensions.dart';
import 'package:moniemate/src/values/colors/colors.dart';

@immutable
class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle? headlineLarge;
  final TextStyle? headlineMedium;
  final TextStyle? headlineSmall;
  final TextStyle? titleLarge;
  final TextStyle? titleMedium;
  final TextStyle? titleSmall;
  final TextStyle? labelLarge;
  final TextStyle? labelMedium;
  final TextStyle? labelSmall;
  final TextStyle? bodyLarge;
  final TextStyle? bodyMedium;
  final TextStyle? bodySmall;
  final TextStyle? overline;

  const AppTextTheme({
    this.headlineLarge,
    this.headlineMedium,
    this.headlineSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.labelLarge,
    this.labelMedium,
    this.labelSmall,
    this.bodyLarge,
    this.bodyMedium,
    this.bodySmall,
    this.overline,
  });

  /*Headline*/
  //Headline Large
  static const num _hLargeFontSize = 32.0;
  static get _hLargeLineHeight => (40.0 / _hLargeFontSize); //1.5

  //Headline Medium.
  static const num _hMediumFontSize = 28.0;
  static num get _hMediumLineHeight => (36.0 / _hMediumFontSize);

  //Headline Small
  static const num _hSmallFontSize = 24.0;
  static num get _hSmallLineHeight => (32.0 / _hSmallFontSize); //1.3

  /*Title*/
  //Title Large
  static const num _titleLargeFontSize = 22.0;
  static num get _titleLargeLineHeight => (28.0 / _titleLargeFontSize); //1.4

  //Title Medium
  static const num _titleMediumFontSize = 16.0;
  static num get _titleMediumLineHeight => (24.0 / _titleMediumFontSize); //1.5

  //Title Small.
  static const num _titleSmallFontSize = 14.0;
  static num get _titleSmallLineHeight => (20.0 / _titleSmallFontSize);

  /*Label*/
  //Label Large.
  static const num _labelLargeFontSize = 14.0;
  static num get _labelLargeLineHeight => (20.0 / _labelLargeFontSize);

  //Label Medium.
  static const num _labelMediumFontSize = 12.0;
  static num get _labelMediumLineHeight => (16.0 / _labelMediumFontSize);

  //Label Small.
  static const num _labelSmallFontSize = 11.0;
  static num get _labelSmallLineHeight => (16.0 / _labelSmallFontSize);

  /*BODY*/
  //Body Large.
  static const num _bodyLargeFontSize = 16.0;
  static num get _bodyLargeLineHeight => (24.0 / _bodyLargeFontSize); //1.4285

  //Body Medium
  static const num _bodyMediumFontSize = 14.0;
  static num get _bodyMediumLineHeight => (20.0 / _bodyMediumFontSize); //1.4285

  //Body Small
  static const num _bodySmallFontSize = 12.0;
  static num get _bodySmallLineHeight => (16.0 / _bodySmallFontSize); //1.5

  //Caption
  static const num _overlinefontSize = 10.0;
  static num get _overlineLineHeight => (16.0 / _overlinefontSize); //1.6

  AppTextTheme.fallback(BuildContext context)
      : this(
          headlineLarge: GoogleFonts.inter(
            fontSize: context.fontSize(_hLargeFontSize),
            height: context.fontSize(_hLargeLineHeight),
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            letterSpacing: 0,
          ),
          headlineMedium: GoogleFonts.inter(
            fontSize: context.fontSize(_hMediumFontSize),
            height: context.fontSize(_hMediumLineHeight),
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            letterSpacing: 0,
          ),
          headlineSmall: GoogleFonts.inter(
            fontSize: context.fontSize(_hSmallFontSize),
            height: context.fontSize(_hSmallLineHeight),
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            letterSpacing: 0,
          ),
          titleLarge: GoogleFonts.inter(
            fontSize: context.fontSize(_titleLargeFontSize),
            height: context.fontSize(_titleLargeLineHeight),
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            letterSpacing: 0,
          ),
          titleMedium: GoogleFonts.inter(
            fontSize: context.fontSize(_titleMediumFontSize),
            height: context.fontSize(_titleMediumLineHeight),
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            letterSpacing: 0.15,
          ),
          titleSmall: GoogleFonts.inter(
            fontSize: context.fontSize(_titleSmallFontSize),
            height: context.fontSize(_titleSmallLineHeight),
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            letterSpacing: 0.1,
          ),
          labelLarge: GoogleFonts.inter(
            fontSize: context.fontSize(_labelLargeFontSize),
            height: context.fontSize(_labelLargeLineHeight),
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            letterSpacing: 0.1,
          ),
          labelMedium: GoogleFonts.inter(
            fontSize: context.fontSize(_labelMediumFontSize),
            height: context.fontSize(_labelMediumLineHeight),
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            letterSpacing: 0,
          ),
          labelSmall: GoogleFonts.inter(
            fontSize: context.fontSize(_labelSmallFontSize),
            height: context.fontSize(_labelSmallLineHeight),
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            letterSpacing: 0.5,
          ),
          bodyLarge: GoogleFonts.inter(
            fontSize: context.fontSize(_bodyLargeFontSize),
            height: context.fontSize(_bodyLargeLineHeight),
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            letterSpacing: 0.15,
          ),
          bodyMedium: GoogleFonts.inter(
            fontSize: context.fontSize(_bodyMediumFontSize),
            height: context.fontSize(_bodyMediumLineHeight),
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            letterSpacing: 0.25,
          ),
          bodySmall: GoogleFonts.inter(
            fontSize: context.fontSize(_bodySmallFontSize),
            height: context.fontSize(_bodySmallLineHeight),
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            letterSpacing: 0.4,
          ),
          overline: GoogleFonts.inter(
            fontSize: context.fontSize(_overlinefontSize),
            height: context.fontSize(_overlineLineHeight),
            fontWeight: FontWeight.normal,
            color: AppColors.black,
            letterSpacing: 0.4,
          ),
        );

  @override
  AppTextTheme copyWith({
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? overline,
  }) {
    return AppTextTheme(
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelLarge ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      overline: overline ?? this.overline,
    );
  }

  @override
  AppTextTheme lerp(AppTextTheme? other, double t) {
    if (other is! AppTextTheme) return this;
    return AppTextTheme(
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t),
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t),
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t),
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t),
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t),
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t),
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t),
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t),
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t),
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t),
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t),
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t),
      overline: TextStyle.lerp(overline, other.overline, t),
    );
  }
}
