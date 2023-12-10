import 'package:flutter/material.dart';
import 'package:moniemate/app/shipment/presentation/widget/shipment_item.dart';
import 'package:moniemate/core/shared/models/shipment_model.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/views/widget/primary_header.dart';

class ShipmentHistoryTabView extends StatelessWidget {
  const ShipmentHistoryTabView({
    super.key,
    required this.data,
  });
  final List<ShipmentModel> data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: context.insetsAll(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PrimaryHeader('Shipments'),
          const YMargin(20),
          ListView.builder(
            itemCount: data.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: context.insetsOnly(bottom: 12),
                child: ShipmentItem(
                  shipment: data[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
