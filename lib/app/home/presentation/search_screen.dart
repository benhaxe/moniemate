import 'package:flutter/material.dart';
import 'package:moniemate/app/home/presentation/widget/app_bar/search_app_bar.dart';
import 'package:moniemate/app/home/presentation/widget/shipment_history_search_item.dart';
import 'package:moniemate/app/shipment/presentation/logic/shipment_logics.dart';
import 'package:moniemate/core/shared/models/shipment_model.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/views/widget/custom_container.dart';

class ShipmentSearchScreen extends StatefulWidget {
  const ShipmentSearchScreen({super.key});

  @override
  State<ShipmentSearchScreen> createState() => _ShipmentSearchScreenState();
}

class _ShipmentSearchScreenState extends State<ShipmentSearchScreen> {
  late final TextEditingController controller;

  List<ShipmentModel> shipments = [];

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();

    //Using controller because for some wierd reasons onChange dey shenk me.
    controller.addListener(onSearch);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShipmentLogic.getAllShipment().then((value) {
        setState(() {
          shipments.addAll(value);
        });
      });
    });
  }

  @override
  void didUpdateWidget(covariant ShipmentSearchScreen oldWidget) {
    if (oldWidget.key != widget.key) {
      print('fddddddd');
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.removeListener(onSearch);
    controller.dispose();
    super.dispose();
  }

  void onSearch() {
    if (!mounted) return;

    final query = controller.text.toLowerCase();

    if (query.isEmpty) {
      setState(() {
        shipments = shipments;
      });
    } else {
      setState(() {
        shipments = shipments
            .where((e) =>
                e.receiptNumber!.toLowerCase().contains(query) ||
                e.item!.toLowerCase().contains(query))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        controller: controller,
      ),
      body: SingleChildScrollView(
        padding: context.insetsAll(16),
        child: CustomContainer.withShadow(
          child: Column(
            children: [
              for (int item = 0; item < shipments.length; item++) ...{
                ShipmentHistorySearchItem(
                  shipment: shipments[item],
                  isNotLastItem: item != shipments.length - 1,
                )
              },
            ],
          ),
        ),
      ),
    );
  }
}
