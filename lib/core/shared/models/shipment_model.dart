//Normally there will be an entity in the domain layer
//that will pull data into the presentation layer.
import 'package:moniemate/core/shared/enums/shipment_status_enum.dart';

class ShipmentModel {
  final String? receiptNumber;
  final String? arrivalDate;
  final String? sendersAddress;
  final String? receieversAddress;
  final num? amount;
  final ShipmentStatusEnum? shipmentStatus;

  ShipmentModel({
    this.receiptNumber,
    this.arrivalDate,
    this.sendersAddress,
    this.receieversAddress,
    this.amount,
    this.shipmentStatus,
  });

  factory ShipmentModel.fromJson(Map<String, dynamic> json) {
    return ShipmentModel(
      receiptNumber: json['receiptNumber'],
      arrivalDate: json['arrivalDate'],
      sendersAddress: json['sendersAddress'],
      receieversAddress: json['receieversAddress'],
      amount: json['amount'],
      shipmentStatus: _statusFromString(json['shipmentStatus']),
    );
  }
  static ShipmentStatusEnum? _statusFromString(dynamic status) {
    switch (status) {
      case "completed":
        return ShipmentStatusEnum.completed;
      case "in-progress":
        return ShipmentStatusEnum.inProgress;
      case "pending-order":
        return ShipmentStatusEnum.pendingOrder;
      case "cancelled":
        return ShipmentStatusEnum.cancelled;
      default:
        return null;
    }
  }
}
