import 'package:moniemate/src/values/assets/images.dart';

class AvailableVehicles {
  AvailableVehicles({
    required this.freightLabel,
    required this.freightroutes,
    required this.freightIllustration,
  });

  final String freightLabel;
  final String freightroutes;
  final String freightIllustration;
}

final freightLabelList = [
  "Ocean Freight",
  "Cargo Freight",
  "Air Freight",
];

final freightRouteList = [
  "International",
  "Reliable",
  "International",
];

final freightIllustrationList = [
  kIMGOceanFreight,
  kIMGCargoFreight,
  kIMGAirFreight,
];
