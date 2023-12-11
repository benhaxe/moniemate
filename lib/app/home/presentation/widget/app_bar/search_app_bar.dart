import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';

import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/components/forms/app_text_field.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      padding: context.insetsOnly(
        left: 8,
        right: 16,
      ),
      height: context.height,
      child: SafeArea(
        child: Row(
          children: [
            const BackButton(
              color: AppColors.white,
            ),
            Expanded(
              child: Hero(
                tag: const ValueKey("search"),
                child: Material(
                  color: Colors.transparent,
                  textStyle: context.textTheme.bodyMedium,
                  child: AppTextField(
                    controller: controller,
                    contentPadding: context.insetsSymetric(vertical: 16),
                    prefix: const Icon(
                      Icons.search,
                      size: 20,
                      color: AppColors.primaryPurple,
                    ),
                    suffix: Padding(
                      padding: context.insetsOnly(right: 8),
                      child: const CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.primaryOrange,
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.flip,
                          ),
                        ),
                      ),
                    ),
                    borderRadius: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 90);
}
