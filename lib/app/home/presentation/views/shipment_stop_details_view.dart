import 'package:flutter/material.dart';
import 'package:moniemate/app/home/presentation/widget/shipment_stop_details_item.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class ShipmentStopDetailsView extends StatelessWidget {
  const ShipmentStopDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
        const YMargin(8),
        const Divider(
          color: AppColors.subHeading,
          thickness: 0.1,
          height: 1,
        ),
        const YMargin(8),
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
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(Icons.add),
                  ),
                  label: 'Sender',
                  details: 'Atlanta, 5243',
                ),
                const ShipmentStopDetailsItem(
                  label: 'Time',
                  details: '2 days - 3 days',
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
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(Icons.add),
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
        const YMargin(16),
        const Divider(
          color: AppColors.subHeading,
          thickness: 0.1,
          height: 1,
        ),
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
