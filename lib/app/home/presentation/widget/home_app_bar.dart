import 'package:flutter/material.dart';
import 'package:moniemate/app/home/presentation/search_screen.dart';
import 'package:moniemate/app/home/presentation/views/user_details_in_app_bar_view.dart';
import 'package:moniemate/src/scaler/scaler.dart';

import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/components/forms/app_text_field.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      padding: context.insetsSymetric(horizontal: 20).copyWith(top: 8),
      height: context.height,
      child: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserDetailsInAppBarView(),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: AppColors.white,
                  child: Icon(
                    Icons.notifications_outlined,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
            const YMargin(24),
            Hero(
              tag: const ValueKey("search"),
              child: AppTextField(
                hint: "Enter the receipt number ...",
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
                onTap: () {
                  debugPrint('888');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return const ShipmentSearchScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 160);
}
