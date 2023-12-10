import 'package:flutter/material.dart';
import 'package:moniemate/app/shipment/domain/shipment_status.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class ShipmentStatusTag extends StatelessWidget {
  const ShipmentStatusTag({
    super.key,
    required this.shipmentStatus,
  });
  final ShipmentStatus? shipmentStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Icon(
            shipmentStatus!.icon,
            color: shipmentStatus!.color,
            size: 20,
          ),
          const XMargin(4),
          Text(
            shipmentStatus!.label ?? '',
            style: context.textTheme.labelLarge!.apply(
              color: shipmentStatus!.color,
            ),
          ),
        ],
      ),
    );
  }
}
