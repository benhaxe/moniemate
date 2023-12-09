import 'package:flutter/material.dart';
import 'package:moniemate/src/theme/text_theme.dart';

extension ATextTheme on BuildContext {
  AppTextTheme get textTheme {
    return Theme.of(this).extension<AppTextTheme>()!;
  }
}
