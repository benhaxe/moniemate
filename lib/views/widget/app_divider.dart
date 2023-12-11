import 'package:flutter/material.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class AppHorizontalDivider extends StatelessWidget {
  const AppHorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        YMargin(8),
        Divider(
          color: AppColors.subHeading,
          thickness: 0.1,
          height: 1,
        ),
        YMargin(8),
      ],
    );
  }
}
