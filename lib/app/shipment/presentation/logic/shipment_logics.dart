import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moniemate/app/shipment/domain/shipment_status.dart';
import 'package:moniemate/core/shared/enums/shipment_status_enum.dart';
import 'package:moniemate/core/shared/models/shipment_model.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class ShipmentLogic {
  static ShipmentStatus? getShipmentStatusLabel(
      ShipmentStatusEnum? statusEnum) {
    switch (statusEnum) {
      case ShipmentStatusEnum.completed:
        return ShipmentStatus(
          label: 'loading',
          color: AppColors.secondaryBlue,
          icon: Icons.timer,
        );
      case ShipmentStatusEnum.inProgress:
        return ShipmentStatus(
          label: 'in-progress',
          color: AppColors.secondaryGreen,
          icon: Icons.refresh,
        );
      case ShipmentStatusEnum.pendingOrder:
        return ShipmentStatus(
          label: 'pending',
          color: AppColors.secondaryOrange,
          icon: Icons.refresh,
        );
      case ShipmentStatusEnum.cancelled:
        return ShipmentStatus(
          label: 'cancelled',
          color: Colors.red,
          icon: Icons.refresh,
        );
      default:
        return null;
    }
  }

  static Future<List<ShipmentModel>> getAllShipment() async {
    final String response =
        await rootBundle.loadString('fixtures/shipment.json');

    final data = await json.decode(response) as List;

    List<ShipmentModel> parsedShipmentModel =
        data.map((e) => ShipmentModel.fromJson(e)).toList();

    return parsedShipmentModel;
  }
}
