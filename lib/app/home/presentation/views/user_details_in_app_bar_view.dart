import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/assets/images.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class UserDetailsInAppBarView extends StatelessWidget {
  const UserDetailsInAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              kIMGAbegRunMeUrgentTukay,
            ),
          ),
        ),
        const XMargin(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.near_me,
                  color: AppColors.neutralN50.withOpacity(.5),
                  size: 16,
                ),
                const XMargin(2),
                Text(
                  "Your location",
                  style: context.textTheme.bodySmall!.apply(
                    color: AppColors.neutralN50.withOpacity(.6),
                  ),
                ),
              ],
            ),
            const YMargin(4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wertheimer, lllinois",
                  style: context.textTheme.bodyMedium!.apply(
                    color: AppColors.white,
                  ),
                ),
                const XMargin(2),
                const Icon(
                  Icons.expand_more_outlined,
                  color: AppColors.neutralN100,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
