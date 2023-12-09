import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/widget/custom_container.dart';

class AvailableVehiclesItem extends StatelessWidget {
  const AvailableVehiclesItem({
    super.key,
    required this.label,
    required this.details,
    required this.illustrationPath,
  });
  final String label;
  final String details;
  final String illustrationPath;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customPadding: EdgeInsets.zero,
      child: Stack(
        children: [
          Padding(
            padding: context.insetsAll(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: context.textTheme.labelSmall!.apply(),
                ),
                Text(
                  details,
                  style: context.textTheme.overline!.apply(
                    color: AppColors.subHeading,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -20,
            top: 60,
            child: SizedBox(
              height: 100,
              child: Image.asset(illustrationPath),
            ),
          )
        ],
      ),
    );
  }
}
