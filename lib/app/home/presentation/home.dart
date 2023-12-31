import 'package:flutter/material.dart';
import 'package:moniemate/app/home/domain/entities.dart';
import 'package:moniemate/app/home/presentation/views/shipment_stop_details_view.dart';
import 'package:moniemate/app/home/presentation/widget/app_bar/home_app_bar.dart';
import 'package:moniemate/app/home/presentation/widget/available_vehilces_item.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/views/widget/custom_container.dart';
import 'package:moniemate/views/widget/primary_header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        padding: context.insetsAll(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PrimaryHeader('Tracking'),
            const YMargin(16),
            CustomContainer.withShadow(
              key: UniqueKey(),
              customPadding:
                  context.insetsSymetric(horizontal: 16).copyWith(top: 16),
              child: const ShipmentStopDetailsView(),
            ),
            const YMargin(32),
            const PrimaryHeader('Availabe vehicles'),
            const YMargin(16),
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: context.insetsOnly(right: 8),
                    child: AvailableVehiclesItem(
                      vehicle: AvailableVehicles(
                        freightLabel: freightLabelList[index],
                        freightroutes: freightRouteList[index],
                        freightIllustration: freightIllustrationList[index],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
