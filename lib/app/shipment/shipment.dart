import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moniemate/app/shipment/widget/shipment_item.dart';
import 'package:moniemate/app/shipment/widget/shipment_status_tab.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/widget/primary_header.dart';

class Shipment extends StatefulWidget {
  const Shipment({super.key});

  @override
  State<Shipment> createState() => _ShipmentState();
}

class _ShipmentState extends State<Shipment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, //Modify this to reflect possible Shipment status.
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          title: const Text('Shipment history'),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: AppColors.primaryOrange,
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding:
                context.insetsSymetric(horizontal: 12).copyWith(bottom: 12),
            tabAlignment: TabAlignment.start,
            indicator: BoxDecoration(
              border: const Border(
                top: BorderSide.none,
                left: BorderSide.none,
                right: BorderSide.none,
                bottom: BorderSide(
                  color: AppColors.primaryOrange,
                  style: BorderStyle.solid,
                  width: 4,
                ),
              ),
              borderRadius: BorderRadius.circular(0), // Creates border
              color: Colors.transparent,
            ),
            dragStartBehavior: DragStartBehavior.start,
            tabs: const [
              ShipmentStatusTab(
                label: "All",
                count: 12,
                isSelected: true,
              ),
              ShipmentStatusTab(
                label: "Completed",
                count: 5,
              ),
              ShipmentStatusTab(
                label: "In Progress",
                count: 3,
              ),
              ShipmentStatusTab(
                label: "Pending Order",
                count: 4,
              ),
              ShipmentStatusTab(
                label: "Cancelled",
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: context.insetsAll(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PrimaryHeader('Shipments'),
              const YMargin(20),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: context.insetsOnly(bottom: 12),
                    child: const ShipmentItem(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
