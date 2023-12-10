import 'package:flutter/material.dart';
import 'package:moniemate/app/calculate/presentation/estimated_amount_screen.dart';
import 'package:moniemate/app/calculate/presentation/widget/category_chips.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/components/buttons/app_buttons.dart';
import 'package:moniemate/views/components/forms/app_text_field.dart';
import 'package:moniemate/views/components/forms/widget/app_prefix_icon.dart';
import 'package:moniemate/views/widget/custom_container.dart';
import 'package:moniemate/views/widget/primary_header.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  late final _chips = [
    "Documents",
    "Glass",
    "Liquid",
    "Food",
    "Electronic",
    "Product",
    "Others"
  ];
  String _selectedChip = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        title: const Text('Calculate'),
      ),
      body: SingleChildScrollView(
        padding: context.insetsAll(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const PrimaryHeader('Destination'),
            const YMargin(16),
            const CustomContainer.withShadow(
              child: Column(
                children: [
                  AppTextField(
                    hint: "Sender location",
                    prefix: AppPrefixIcon(icon: Icons.unarchive_outlined),
                  ),
                  YMargin(8),
                  AppTextField(
                    hint: "Receier location",
                    prefix: AppPrefixIcon(icon: Icons.archive_outlined),
                  ),
                  YMargin(8),
                  AppTextField(
                    hint: "Approx weight",
                    prefix: AppPrefixIcon(icon: Icons.scale_outlined),
                  ),
                  YMargin(8),
                ],
              ),
            ),
            const YMargin(24),
            const PrimaryHeader(
              'Packaging',
              description: 'What are you sending?',
            ),
            const YMargin(16),
            CustomContainer.withShadow(
              customPadding: context.insetsAll(8),
              child: AppTextField(
                fillColor: AppColors.white,
                initialValue: "Box",
                prefix: const AppPrefixIcon(icon: Icons.archive_outlined),
                suffix: const Icon(Icons.expand_more_outlined),
                onTap: () {},
              ),
            ),
            const YMargin(24),
            const PrimaryHeader(
              'Categories',
              description: 'What are you sending?',
            ),
            const YMargin(16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                for (var chip in _chips)
                  CategoryChip(
                    label: chip,
                    active: _selectedChip == chip,
                    onTap: (value) {
                      setState(() {
                        _selectedChip = value;
                      });
                    },
                  )
              ],
            ),
            const YMargin(48),
            AppButton(
              label: 'Calculate',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const EstimatedAmountScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
