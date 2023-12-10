import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
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
          color: AppColors.secondaryGreen,
          icon: Icons.refresh,
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
          color: AppColors.secondaryGreen,
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

extension StringExtension on String {
  String get userState {
    try {
      if (isNotEmpty) {
        final List<String> value = split(",");
        return value.first;
      }
      return '';
    } catch (_) {
      return '';
    }
  }

  String get formatedArrivalDate {
    final date = DateTime.tryParse(this) ?? DateTime.now();
    return DateFormat("MMM dd,yyyy").format(date);
  }

  String get arrivalDay {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    final dateToCheck = DateTime.tryParse(this) ?? DateTime.now();

    final aDate = DateTime(
      dateToCheck.year,
      dateToCheck.month,
      dateToCheck.day,
    );

    if (aDate == today) {
      return 'Arriving Today!';
    } else if (aDate == yesterday) {
      return 'Arrived Yesterday!';
    } else if (aDate == tomorrow) {
      return 'Arriving Tomorrow!';
    } else {
      return 'Arrived';
    }
  }
}
