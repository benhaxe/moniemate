import 'package:flutter/material.dart';
import 'package:moniemate/core/shared/models/shipment_model.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/assets/images.dart';
import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/widget/app_divider.dart';

class ShipmentHistorySearchItem extends StatelessWidget {
  const ShipmentHistorySearchItem({
    super.key,
    required this.shipment,
    this.isNotLastItem = true,
  });
  final ShipmentModel shipment;
  final bool isNotLastItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryPurple,
              child: Image.asset(
                kIMGBox,
                height: 24,
              ),
            ),
            const XMargin(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shipment.item ?? "Macbook pro M2",
                  style: context.textTheme.titleMedium,
                ),
                Row(
                  children: [
                    Text(
                      '#${shipment.receiptNumber ?? 'NE455646458399'}',
                      style: context.textTheme.bodyMedium!.apply(
                        color: AppColors.subHeading,
                      ),
                    ),
                    /* const Text(
                      " • ",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.neutralN400,
                      ),
                    ),
                    Text(
                      "#${shipment.receiptNumber ?? 'NE455646458399'} • ${shipment.sendersAddress?.userState} -> ${shipment.receieversAddress?.userState}",
                      style: context.textTheme.bodyMedium!.apply(
                        color: AppColors.subHeading,
                      ),
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ), */
                  ],
                ),
                /* RichText(
                  text: TextSpan(
                    text: '#${shipment.receiptNumber ?? 'NE455646458399'}',
                    style: context.textTheme.bodyMedium!.apply(
                      color: AppColors.subHeading,
                    ),
                    children: [
                      const TextSpan(
                        text: " • ",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.neutralN400,
                        ),
                      ),
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "${shipment.sendersAddress?.userState} -> ${shipment.receieversAddress?.userState}",
                            style: context.textTheme.bodyMedium!.apply(
                              color: AppColors.subHeading,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ) */
              ],
            )
          ],
        ),
        const YMargin(8),
        if (isNotLastItem) const AppHorizontalDivider()
      ],
    );
  }
}
