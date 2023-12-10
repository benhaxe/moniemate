import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/values/colors/colors.dart';

class AppTextField extends StatelessWidget {
  final String? hint;
  final String? initialValue;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final VoidCallback? onTap;
  final EdgeInsets? contentPadding;
  final Color? fillColor;
  final double? borderRadius;

  const AppTextField({
    Key? key,
    this.hint,
    this.initialValue,
    this.suffix,
    this.prefix,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.onTap,
    this.contentPadding,
    this.fillColor = const Color(0xfff9f9f9),
    this.borderRadius = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: onTap == null,
      readOnly: onTap != null,
      onTap: onTap,
      controller: TextEditingController(text: initialValue),
      cursorColor: AppColors.subHeading,
      textCapitalization: TextCapitalization.characters,
      style: context.textTheme.bodyLarge,
      textInputAction: textInputAction,
      autovalidateMode: AutovalidateMode.disabled,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: fillColor != null,
        hintText: hint,
        hintStyle: context.textTheme.bodyMedium!.apply(
          color: AppColors.neutralN400,
        ),
        contentPadding: contentPadding ?? EdgeInsets.zero,
        prefixIcon: prefix,
        suffixIcon: suffix,
        suffixIconColor: AppColors.neutralN400,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(.5),
          ),
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(.5),
          ),
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(.5),
          ),
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
      ),
    );
  }
}
