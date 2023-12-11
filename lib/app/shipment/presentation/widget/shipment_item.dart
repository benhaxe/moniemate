import 'package:flutter/material.dart';
import 'package:moniemate/app/shipment/presentation/logic/shipment_logics.dart';
import 'package:moniemate/app/shipment/presentation/widget/shipment_status_tag.dart';
import 'package:moniemate/core/shared/models/shipment_model.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/extensions/src/string_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/assets/images.dart';

import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/widget/custom_container.dart';

class ShipmentItem extends StatelessWidget {
  const ShipmentItem({
    super.key,
    required this.shipment,
  });
  final ShipmentModel shipment;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (shipment.shipmentStatus != null)
            ShipmentStatusTag(
              shipmentStatus:
                  ShipmentLogic.getShipmentStatusLabel(shipment.shipmentStatus),
            ),
          const YMargin(4),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shipment.arrivalDate!.arrivalDay,
                      style: context.textTheme.titleMedium,
                    ),
                    const YMargin(4),
                    Text(
                      'Your delivery, #${shipment.receiptNumber} from ${shipment.sendersAddress!.userState}, is arriving today!',
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
              text: "\$${shipment.amount} USD",
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
                  text: shipment.arrivalDate!.formatedArrivalDate,
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
