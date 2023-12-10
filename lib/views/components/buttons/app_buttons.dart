import 'package:flutter/material.dart';
import 'package:moniemate/src/scaler/src/extensions.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primaryOrange),
        foregroundColor: MaterialStateProperty.all(AppColors.white),
        padding: MaterialStateProperty.all(
          context.insetsSymetric(
            vertical: 16,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(fontWeight: FontWeight.w600),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(MediaQuery.sizeOf(context).width * .85, 45),
        ),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
