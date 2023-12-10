import 'package:flutter/material.dart';
import 'package:moniemate/src/scaler/scaler.dart';

import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/components/forms/app_text_field.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
    required this.focusNode,
    required this.controller,
  });

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      padding: context.insetsSymetric(horizontal: 20).copyWith(top: 8),
      height: context.height,
      child: SafeArea(
        child: Row(
          children: [
            const BackButton(
              color: AppColors.white,
            ),
            Hero(
              tag: const ValueKey("search"),
              child: AppTextField(
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
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 120);
}
