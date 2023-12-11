import 'package:flutter/material.dart';
import 'package:moniemate/app/home/presentation/widget/shipment_stop_details_item.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/assets/images.dart';
import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/widget/app_divider.dart';

class ShipmentStopDetailsView extends StatelessWidget {
  const ShipmentStopDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shipment Number',
                  style: context.textTheme.labelSmall!.apply(
                    color: AppColors.subHeading,
                  ),
                ),
                const YMargin(4),
                Text(
                  'NEJ200089934122231',
                  style: context.textTheme.titleMedium,
                ),
              ],
            ),
            Transform.flip(
              flipX: true,
              child: Transform.rotate(
                angle: -270,
                child: Image.asset(
                  kIMGForkLift,
                  height: 45,
                ),
              ),
            ),
          ],
        ),
        const AppHorizontalDivider(),
        Table(
          columnWidths: const {
            0: FlexColumnWidth(4),
            1: FlexColumnWidth(2),
            2: FlexColumnWidth(4),
          },
          children: [
            TableRow(
              children: [
                ShipmentStopDetailsItem(
                  illustration: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryOrange.withOpacity(.2),
                    ),
                    child: Padding(
                      padding: context.insetsAll(8.0),
                      child: Image.asset(
                        kIMGUnPacking,
                      ),
                    ),
                  ),
                  label: 'Sender',
                  details: 'Atlanta, 5243',
                ),
                const ShipmentStopDetailsItem(
                  label: 'Time',
                  details: '2 days - 3 days',
                  /* hasIndicator: true, */
                ),
              ],
            ),
            const TableRow(
              children: [
                YMargin(32),
                YMargin(32),
              ],
            ),
            TableRow(
              children: [
                ShipmentStopDetailsItem(
                  illustration: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.secondaryGreen.withOpacity(.2),
                    ),
                    child: Padding(
                      padding: context.insetsAll(8.0),
                      child: Image.asset(kIMGPacking),
                    ),
                  ),
                  label: 'Receiver',
                  details: 'Chicago, 6342',
                ),
                const ShipmentStopDetailsItem(
                  label: 'Status',
                  details: 'Waiting to collect',
                ),
              ],
            )
          ],
        ),
        const YMargin(8),
        const AppHorizontalDivider(),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: AppColors.primaryOrange,
          ),
          label: Text(
            'Add Stop',
            style: context.textTheme.labelLarge!.apply(
              color: AppColors.primaryOrange,
            ),
          ),
        )
      ],
    );
  }
}
