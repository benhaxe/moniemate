import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final String label;
  final bool active;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(label);
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 300),
        padding: context.insetsSymetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.black,
            width: 1,
          ),
          color: active ? AppColors.black : Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (active) ...{
              const Icon(
                Icons.check,
                color: AppColors.white,
                size: 16,
              ),
              const XMargin(4)
            },
            Text(
              label,
              style: context.textTheme.labelMedium!.apply(
                color: active ? AppColors.white : AppColors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
