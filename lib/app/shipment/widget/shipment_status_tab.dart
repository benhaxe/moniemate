import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class ShipmentStatusTab extends StatelessWidget {
  const ShipmentStatusTab({
    super.key,
    required this.label,
    this.count,
    this.isSelected = false,
  });
  final String label;
  final int? count;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: context.textTheme.titleMedium!.apply(
            color: AppColors.white,
          ),
        ),
        const SizedBox(width: 8),
        if (count != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color:
                  isSelected ? AppColors.primaryOrange : AppColors.neutralN75,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "$count",
              style: context.textTheme.bodySmall!.apply(
                color: AppColors.white,
              ),
            ),
          ),
      ],
    );
  }
}
