import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:moniemate/app/shipment/presentation/logic/shipment_logics.dart';
import 'package:moniemate/app/shipment/presentation/view/tabs/shipment_history_tab_view.dart';
import 'package:moniemate/app/shipment/presentation/widget/shipment_status_tab.dart';
import 'package:moniemate/core/shared/enums/shipment_status_enum.dart';
import 'package:moniemate/core/shared/models/shipment_model.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class Shipment extends StatefulWidget {
  const Shipment({super.key});

  @override
  State<Shipment> createState() => _ShipmentState();
}

class _ShipmentState extends State<Shipment> with TickerProviderStateMixin {
  List<ShipmentModel> shipments = [];
  late final TabController _tabController;

  int _index = 0;

  updateIndex() {
    _index = _tabController.index;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(updateIndex);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShipmentLogic.getAllShipment().then((value) {
        setState(() {
          shipments.addAll(value);
        });
      });
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(updateIndex);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        title: const Text('Shipment history'),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
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
          tabs: [
            ShipmentStatusTab(
              label: "All",
              count: 12,
              isSelected: _index == 0,
            ),
            ShipmentStatusTab(
              label: "Completed",
              count: 5,
              isSelected: _index == 1,
            ),
            ShipmentStatusTab(
              label: "In Progress",
              count: 3,
              isSelected: _index == 2,
            ),
            ShipmentStatusTab(
              label: "Pending Order",
              count: 4,
              isSelected: _index == 3,
            ),
            ShipmentStatusTab(
              label: "Cancelled",
              isSelected: _index == 4,
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<ShipmentModel>>(
        future: ShipmentLogic.getAllShipment(),
        builder: (_, AsyncSnapshot<List<ShipmentModel>> snapshot) {
          if (snapshot.data == null) {
            return const Offstage();
          }
          final data = snapshot.data;
          return TabBarView(
            controller: _tabController,
            children: [
              ShipmentHistoryTabView(data: data!),
              ShipmentHistoryTabView(
                data: data
                    .where((element) =>
                        element.shipmentStatus == ShipmentStatusEnum.completed)
                    .toList(),
              ),
              ShipmentHistoryTabView(
                data: data
                    .where((element) =>
                        element.shipmentStatus == ShipmentStatusEnum.inProgress)
                    .toList(),
              ),
              ShipmentHistoryTabView(
                data: data
                    .where((element) =>
                        element.shipmentStatus ==
                        ShipmentStatusEnum.pendingOrder)
                    .toList(),
              ),
              ShipmentHistoryTabView(
                data: data
                    .where((element) =>
                        element.shipmentStatus == ShipmentStatusEnum.cancelled)
                    .toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
