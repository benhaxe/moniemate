import 'package:flutter/material.dart';
import 'package:moniemate/src/scaler/src/extensions.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class AppPrefixIcon extends StatelessWidget {
  const AppPrefixIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: context.insetsOnly(left: 8.0),
          child: Icon(
            icon,
            size: 20,
            color: AppColors.neutralN400,
          ),
        ),
        const SizedBox(
          height: 24,
          child: VerticalDivider(
            thickness: .5,
            color: AppColors.neutralN300,
          ),
        ),
      ],
    );
  }
}
