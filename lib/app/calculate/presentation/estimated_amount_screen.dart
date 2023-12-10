import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moniemate/src/extensions/src/context_on_theme_extension.dart';
import 'package:moniemate/src/scaler/scaler.dart';
import 'package:moniemate/src/values/assets/images.dart';
import 'package:moniemate/src/values/colors/colors.dart';
import 'package:moniemate/views/components/buttons/app_buttons.dart';
import 'package:moniemate/views/widget/app_logo.dart';

class EstimatedAmountScreen extends StatefulWidget {
  const EstimatedAmountScreen({super.key});

  @override
  State<EstimatedAmountScreen> createState() => _EstimatedAmountScreenState();
}

class _EstimatedAmountScreenState extends State<EstimatedAmountScreen> {
  final ValueNotifier<int> _startingPoint = ValueNotifier(1300);

  Timer? _amountCounter;

  void _countMoney() {
    _amountCounter?.cancel();
    _amountCounter = Timer.periodic(
      const Duration(milliseconds: 6),
      (amountCounter) {
        _startingPoint.value += 1;
        if (_startingPoint.value == 1460) {
          amountCounter.cancel();
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(_countMoney);
  }

  @override
  void dispose() {
    _amountCounter?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogo(),
            const YMargin(48),
            Image.asset(
              kIMGShipmentBox,
              height: 140,
            ),
            const YMargin(28),
            Padding(
              padding: context.insetsSymetric(
                horizontal: 52,
              ),
              child: Column(
                children: [
                  Text(
                    'Total Estimated Amount',
                    style: context.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const YMargin(4),
                  ValueListenableBuilder(
                      valueListenable: _startingPoint,
                      builder: (context, int value, __) {
                        return RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "\$$value",
                                style: context.textTheme.headlineSmall!.apply(
                                  color: AppColors.secondaryGreen,
                                ),
                              ),
                              TextSpan(
                                text: "USD",
                                style: context.textTheme.labelLarge!.apply(
                                  color: AppColors.secondaryGreen,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  const YMargin(4),
                  Text(
                    'This amount is estimated this will vary if you change your location or weight',
                    style: context.textTheme.bodyMedium!.apply(
                      color: AppColors.neutralN400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const YMargin(32),
            AppButton(
              label: 'Back to home',
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
