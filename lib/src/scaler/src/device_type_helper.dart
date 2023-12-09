import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moniemate/src/scaler/src/breakpoints.dart';

class DeviceTypeHelper {
  final BuildContext context;

  const DeviceTypeHelper(this.context);
  const DeviceTypeHelper.of(this.context);

  double get _width {
    // TODO: Update to use View.of(context).width with flutter version 3.10
    // https://docs.flutter.dev/release/breaking-changes/window-singleton#migration-guide
    return window.physicalSize.width / window.devicePixelRatio;
  }

  bool get isMobile => _width < kTabletBreakPoint;

  bool get isTablet => _width >= kTabletBreakPoint && _width < kWebBreakPoint;

  bool get isWeb => _width >= kWebBreakPoint;
}
