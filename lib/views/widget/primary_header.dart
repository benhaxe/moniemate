import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';

class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader(
    this.headerText, {
    super.key,
  });
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: context.textTheme.titleMedium,
    );
  }
}
