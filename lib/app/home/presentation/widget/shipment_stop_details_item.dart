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
  });
  final Widget? illustration;
  final String label;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (illustration != null) illustration!,
        if (illustration != null) const XMargin(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: context.textTheme.labelSmall!.apply(
                color: AppColors.subHeading,
              ),
            ),
            const YMargin(4),
            Text(
              details,
              style: context.textTheme.labelMedium!,
            ),
          ],
        ),
      ],
    );
  }
}
