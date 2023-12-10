import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader(
    this.headerText, {
    this.description,
    super.key,
  });
  final String headerText;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: context.textTheme.titleMedium!.apply(),
        ),
        if (description != null)
          Text(
            description!,
            style: context.textTheme.bodyMedium!.apply(
              color: AppColors.subHeading,
            ),
          ),
      ],
    );
  }
}
