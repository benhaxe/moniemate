import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/assets/images.dart';

import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/widget/custom_container.dart';

class ShipmentItem extends StatelessWidget {
  const ShipmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: context.insetsSymetric(
              horizontal: 12,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: AppColors.neutralN75,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.sync,
                  color: AppColors.secondaryGreen,
                  size: 20,
                ),
                const XMargin(4),
                Text(
                  'in-progress',
                  style: context.textTheme.labelLarge!.apply(
                    color: AppColors.secondaryGreen,
                  ),
                ),
              ],
            ),
          ),
          const YMargin(4),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arriving today!',
                      style: context.textTheme.titleMedium,
                    ),
                    const YMargin(4),
                    Text(
                      'Your delivery, #NEJ200899341222231 from Atlanta, is arriving today!',
                      style: context.textTheme.bodySmall!.apply(
                        color: AppColors.subHeading,
                      ),
                    ),
                  ],
                ),
              ),
              const XMargin(4),
              Image.asset(
                kIMGShipmentBox,
                width: 80,
              )
            ],
          ),
          const YMargin(8),
          RichText(
            text: TextSpan(
              text: "\$230 USD",
              style: context.textTheme.labelMedium!
                  .apply(color: AppColors.primaryPurple),
              children: [
                const TextSpan(
                  text: " • ",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.neutralN300,
                  ),
                ),
                TextSpan(
                  text: "Sep 20, 2023",
                  style: context.textTheme.overline!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
