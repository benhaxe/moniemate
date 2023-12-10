import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/assets/images.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'MonieMate',
          style: context.textTheme.titleLarge!.apply(
            fontStyle: FontStyle.italic,
            fontWeightDelta: 8,
            color: AppColors.primaryPurple.withOpacity(0.9),
          ),
        ),
        const XMargin(8),
        Image.asset(
          kIMGLogo,
          height: 28,
        )
      ],
    );
  }
}
