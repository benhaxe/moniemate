import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class ShipmentStopDetailsItem extends StatelessWidget {
  const ShipmentStopDetailsItem({
    super.key,
    this.illustration,
    required this.label,
    required this.details,
    this.hasIndicator = false,
  });
  final Widget? illustration;
  final String label;
  final String details;
  final bool hasIndicator;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (illustration != null) illustration!,
        if (illustration != null) const XMargin(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              label,
              style: context.textTheme.labelSmall!.apply(
                color: AppColors.subHeading,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (hasIndicator)
                  const Text(
                    " • ",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.secondaryGreen,
                    ),
                  ),
                Text(
                  details,
                  style: context.textTheme.labelMedium!,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
