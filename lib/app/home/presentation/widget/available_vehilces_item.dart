import 'package:flutter/material.dart';
import 'package:moniemate/app/home/domain/entities.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/widget/custom_container.dart';

class AvailableVehiclesItem extends StatelessWidget {
  const AvailableVehiclesItem({
    super.key,
    required this.vehicle,
  });
  final AvailableVehicles vehicle;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      customPadding: EdgeInsets.zero,
      child: Stack(
        children: [
          Padding(
            padding: context.insetsAll(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  vehicle.freightLabel,
                  style: context.textTheme.labelLarge!.apply(),
                ),
                Text(
                  vehicle.freightroutes,
                  style: context.textTheme.labelSmall!.apply(
                    color: AppColors.subHeading,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -30,
            top: 70,
            child: Transform.rotate(
              angle: 270,
              child: SizedBox(
                height: 90,
                child: Image.asset(vehicle.freightIllustration),
              ),
            ),
          )
        ],
      ),
    );
  }
}
