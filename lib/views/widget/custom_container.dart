import 'package:flutter/material.dart';
import 'package:moniemate/src/scaler/src/extensions.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required Widget child,
    this.customPadding,
  })  : _child = child,
        _hasShadow = false;

  const CustomContainer.withShadow({
    super.key,
    required Widget child,
    this.customPadding,
  })  : _child = child,
        _hasShadow = true;

  final Widget _child;
  final bool _hasShadow;
  final EdgeInsetsGeometry? customPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: customPadding ?? context.insetsAll(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: _hasShadow
            ? [
                BoxShadow(
                  color: AppColors.neutralN200.withOpacity(0.5),
                  spreadRadius: -8,
                  blurRadius: 8,
                  offset: const Offset(0, 8),
                ),
              ]
            : null,
      ),
      child: _child,
    );
  }
}
